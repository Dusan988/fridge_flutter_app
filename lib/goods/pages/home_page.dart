import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fridge_tracker/authentication/blocs/auth_cubit.dart';
import 'package:fridge_tracker/authentication/blocs/auth_state.dart';
import 'package:fridge_tracker/core/blocs/connectivity_cubit.dart';
import 'package:fridge_tracker/core/widgets/fridge_app_bar.dart';
import 'package:fridge_tracker/core/widgets/offline_dialog.dart';
import 'package:fridge_tracker/goods/blocs/goods_cubit.dart';
import 'package:fridge_tracker/goods/dtos/fridge_item_dto.dart';
import 'package:fridge_tracker/goods/widgets/fridge_item_card.dart';

final homePageScrollController = ScrollController();

@RoutePage<void>()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _searchQuery = '';
  String? _selectedCategory;
  late final GoodsCubit _goodsCubit;

  @override
  void initState() {
    super.initState();
    _goodsCubit = context.read<GoodsCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ConnectivityCubit, ConnectivityState>(
          listenWhen: (oldState, currentState) {
            return oldState.isOnline != currentState.isOnline;
          },
          listener: (context, state) {
            state.maybeMap(
              offline: (_) => offlineDialog(context),
              orElse: () {},
            );
          },
        ),
        BlocListener<GoodsCubit, GoodsState>(
          listener: (context, state) {
            state.maybeMap(
              removed: (s) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.redAccent,
                    content: Text('${s.item.name} removed!'),
                  ),
                );
              },

              // error: (s) {
              //   ScaffoldMessenger.of(context).showSnackBar(
              //     SnackBar(
              //       backgroundColor: Colors.redAccent,
              //       content: Text('Error: ${s.message}'),
              //     ),
              //   );
              // },
              orElse: () {},
            );
          },
        ),
      ],
      child: BlocBuilder<AuthCubit, AuthState>(
        buildWhen: (oldState, currentState) => oldState != currentState,
        builder: (context, state) {
          final userId = state.mapOrNull(
            signedIn: (data) => data.user.uid,
            signedUp: (data) => data.user.uid,
          );

          return BlocProvider.value(
            value: _goodsCubit..fetchFridgeItems(userId: userId ?? ''),
            child: Scaffold(
              appBar: FridgeAppBar(
                backgroundColor: Colors.green,
                titleWidget: Center(
                  child: Text(
                    'My Fridge',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              body: BlocBuilder<GoodsCubit, GoodsState>(
                buildWhen: (prev, curr) => prev != curr,
                builder: (context, state) {
                  final List<FridgeItemDTO> items = state.maybeWhen(
                    loaded: (items) => items,
                    added: (_, items) => items,
                    removed: (_, items) => items,
                    orElse: () => [],
                  );

                  return _buildItemsList(items, userId ?? '');
                },
              )
            ),
          );
        },
      ),
    );
  }

  Widget _buildItemsList(List<FridgeItemDTO> items, String userId) {
    final categories = items.map((e) => e.category).toSet().toList();

    final filteredItems = items.where((item) {
      final matchesSearch = item.name.toLowerCase().contains(
        _searchQuery.toLowerCase(),
      );
      final matchesCategory =
          _selectedCategory == null || item.category == _selectedCategory;
      return matchesSearch && matchesCategory;
    }).toList();

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(12.h),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search by name...",
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            onChanged: (val) => setState(() => _searchQuery = val),
          ),
        ),

        SizedBox(
          height: 50.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            children: [
              FilterChip(
                label: const Text("All"),
                selected: _selectedCategory == null,
                onSelected: (val) => setState(() => _selectedCategory = null),
              ),
              SizedBox(width: 8.w),
              ...categories.map(
                (cat) => Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: FilterChip(
                    label: Text(cat),
                    selected: _selectedCategory == cat,
                    onSelected: (val) =>
                        setState(() => _selectedCategory = val ? cat : null),
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 8.h),
        Expanded(
          child: filteredItems.isEmpty
              ? const Center(child: Text("No items match your filter."))
              : ListView.builder(
                  itemCount: filteredItems.length,
                  itemBuilder: (context, index) {
                    final item = filteredItems[index];
                    return Dismissible(
                      key: ValueKey(item.id),
                      background: Container(
                        color: Colors.red,
                        child: const Icon(Icons.delete, color: Colors.white),
                      ),
                      onDismissed: (_) {
                        context.read<GoodsCubit>().removeFridgeItem(
                          userId,
                          item,
                        );
                      },
                      child: FridgeItemCard(item: item),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
