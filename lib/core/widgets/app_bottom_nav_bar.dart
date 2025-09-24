
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fridge_tracker/core/extensions/context_extensions.dart';
import 'package:badges/badges.dart' as badges;
class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key, required this.children});

  final List<AppBottomNavigationBarItem> children;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: Colors.transparent,
      child: Container(
        height: 60.h,
        margin: EdgeInsets.symmetric(horizontal: 16.w).copyWith(
          bottom: context.hasBottomPadding ? 0 : 12.h,
        ),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.95),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: children,
          ),
        ),
      ),
    );
  }
}

class AppBottomNavigationBarItem extends StatelessWidget {
  const AppBottomNavigationBarItem._({
    Key? key,
    required this.index,
    required this.onPressed,
    this.activeIcon,
    this.inactiveIcon,
    this.child,
    this.badge,
    this.semanticsLabel,
  }) : super(key: key);

  const AppBottomNavigationBarItem.icon({
    Key? key,
    required int index,
    required Widget activeIcon,
    required Widget inactiveIcon,
    required VoidCallback onPressed,
    Widget? badge,
    String? semanticsLabel,
  }) : this._(
    key: key,
    index: index,
    activeIcon: activeIcon,
    inactiveIcon: inactiveIcon,
    onPressed: onPressed,
    badge: badge,
    semanticsLabel: semanticsLabel,
  );

  const AppBottomNavigationBarItem.widget({
    Key? key,
    required int index,
    required Widget child,
    required VoidCallback onPressed,
    String? semanticsLabel,
  }) : this._(
    key: key,
    index: index,
    child: child,
    onPressed: onPressed,
    semanticsLabel: semanticsLabel,
  );

  final int index;
  final Widget? activeIcon;
  final Widget? inactiveIcon;
  final Widget? child;
  final VoidCallback onPressed;
  final Widget? badge;
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) {
    final activeIndex = AutoTabsRouter.of(context).activeIndex;

    return badges.Badge(
      ignorePointer: true,
      badgeContent: badge,
      showBadge: badge != null,
      position: badges.BadgePosition.topStart(
        top: 5.r,
        start: 2.r,
      ),

      child: Container(
        width: 44.r,
        height: 44.r,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: index == activeIndex
              ? Colors.white60
              : Colors.transparent,
        ),
        alignment: Alignment.center,
        child: Semantics(
          label: semanticsLabel,
          child: FloatingActionButton(
            onPressed: onPressed,
            elevation: 0,
            highlightElevation: 0,
            backgroundColor: Colors.transparent,
            heroTag: "bottom_bar_button_$index",
            child: child ?? (index == activeIndex ? activeIcon : inactiveIcon),
          ),
        ),
      ),
    );
  }
}
