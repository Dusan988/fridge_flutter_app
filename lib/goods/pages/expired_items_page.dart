import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fridge_tracker/core/widgets/fridge_app_bar.dart';
import 'package:fridge_tracker/goods/blocs/goods_cubit.dart';
import 'package:fridge_tracker/goods/dtos/fridge_item_dto.dart';
import 'package:fridge_tracker/goods/widgets/fridge_item_card.dart';

@RoutePage<void>()
class ExpiredItemsPage extends StatelessWidget {
  const ExpiredItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FridgeAppBar(
        backgroundColor: Colors.green,
        titleWidget: Center(child: Text('Expired Items')),
      ),
      body: BlocBuilder<GoodsCubit, GoodsState>(
        builder: (context, state) {
          final List<FridgeItemDTO> expiredItems = state.maybeMap(
            loaded: (data) => data.items
                .where((item) => item.bestBeforeDate.isBefore(DateTime.now()))
                .toList(),
            orElse: () => [],
          );

          return expiredItems.isNotEmpty?Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: ListView.builder(
              itemCount: expiredItems.length,
              itemBuilder: (context, index) {
                final item = expiredItems[index];

                return FridgeItemCard(item: item);
              },
            ),
          ): Center(child: Text('No data yet..'),);
        },
      ),
    );
  }
}
