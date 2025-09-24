import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fridge_tracker/authentication/blocs/auth_cubit.dart';
import 'package:fridge_tracker/authentication/blocs/auth_state.dart';
import 'package:fridge_tracker/core/extensions/context_extensions.dart';
import 'package:fridge_tracker/core/widgets/app_bottom_nav_bar.dart';
import 'package:fridge_tracker/core/widgets/app_dialog.dart';
import 'package:fridge_tracker/goods/blocs/goods_cubit.dart';
import 'package:fridge_tracker/goods/pages/home_page.dart';
import 'package:fridge_tracker/router.gr.dart';

@RoutePage<void>()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            final userId = state.mapOrNull(
              signedIn: (data) => data.user.uid,
              signedUp: (data) => data.user.uid,
            );
            return AutoTabsScaffold(
              backgroundColor: Colors.black12,
              resizeToAvoidBottomInset: false,
              lazyLoad: false,
              key: const Key('main_page'),
              routes: [
                HomePageRoute(),
                AddItemPageRoute(userId: userId ?? ''),
                ExpiredItemsPageRoute(),
                ProfilePageRoute(),

              ],
              extendBody: true,
              bottomNavigationBuilder: (context, _) => PopScope(
                canPop: false,
                onPopInvoked: (bool didPop) async {
                  if (didPop) return;
                  final bool shouldPop = await _onWillPop(context);
                  if (shouldPop && mounted) context.rootRouter.popForced();
                },
                child: AppBottomNavigationBar(
                  children: [
                    AppBottomNavigationBarItem.icon(
                      index: 0,
                      semanticsLabel: "Go to home page",
                      onPressed: () {
                        _bottomNavigationBarClick(context, 0);
                        context.read<GoodsCubit>().fetchFridgeItems(
                          userId: userId ?? '',
                        );
                      },

                      inactiveIcon: Icon(Icons.home_outlined),
                      activeIcon: Icon(Icons.home_filled, color: Colors.green),
                    ),
                    AppBottomNavigationBarItem.icon(
                      index: 1,
                      semanticsLabel: "Go to add items",
                      onPressed: () => _bottomNavigationBarClick(context, 1),
                      inactiveIcon: Icon(Icons.add_circle_outline_outlined),
                      activeIcon: Icon(Icons.add_circle, color: Colors.green),
                    ),
                    AppBottomNavigationBarItem.icon(
                      index: 2,
                      semanticsLabel: " Go to expired items",
                      onPressed: () => _bottomNavigationBarClick(context, 2),
                      activeIcon: Icon(
                        Icons.watch_later_rounded,
                        color: Colors.green,
                      ),
                      inactiveIcon: Icon(Icons.watch_later_outlined),
                    ),
                    AppBottomNavigationBarItem.icon(
                      index: 3,
                      semanticsLabel: " Go to user profile",
                      onPressed: () => _bottomNavigationBarClick(context, 3),
                      activeIcon: Icon(Icons.person, color: Colors.green),
                      inactiveIcon: Icon(Icons.person_outline),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    if (AutoTabsRouter.of(context).activeIndex == 0) {
      await showDialog<bool>(
        context: context,
        barrierDismissible: false,
        builder: (context) => AppDialog(
          canBeClosed: false,
          title: 'Exit',
          message: 'Exit app?',
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    context.rootRouter.pop(true);
                    SystemNavigator.pop();
                  },
                  child: Text('Yes'),
                ),
                SizedBox(width: 20.w),
                TextButton(
                  onPressed: context.rootRouter.maybePop,
                  child: Text('No'),
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      AutoTabsRouter.of(context).setActiveIndex(0);
    }
    return false;
  }

  void _bottomNavigationBarClick(BuildContext context, int index) {
    if (pageIndex == 0 && index == 0) {
      homePageScrollController.animateTo(
        0,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOutCubic,
      );
    }
    pageIndex = index;
    AutoTabsRouter.of(context).setActiveIndex(index);
  }
}
