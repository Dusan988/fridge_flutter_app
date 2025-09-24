
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fridge_tracker/core/extensions/context_extensions.dart';

class FridgeBackButton extends StatelessWidget {
  final String? labelText;
  final Color? foregroundColor;
  final bool useRootNavigator;
  final Function()? onClick;

  const FridgeBackButton({
    this.labelText,
    this.foregroundColor,
    this.useRootNavigator = false,
    this.onClick,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = foregroundColor ?? Theme.of(context).colorScheme.secondary;
    return TextButton.icon(
      key: const Key('back_button'),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        foregroundColor: color,
        backgroundColor: Colors.transparent,
        side: BorderSide.none,
        minimumSize: Size(0, 36.h),
      ),
      icon: Icon(Icons.arrow_back_ios_new),
      label: Text(
        labelText ?? 'Back',
        style: context.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w400,
          color: color,
          height: 1,
          shadows: color == Colors.white
              ? [
            BoxShadow(
              color: Colors.black.withOpacity(0.45),
              blurRadius: 4,
              offset: Offset.zero,
            ),
          ]
              : null,
        ),
      ),
      onPressed: onClick ??
          (useRootNavigator
              ? context.rootRouter.pop
              : AutoRouter.of(context).pop),
    );
  }
}
