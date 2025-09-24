
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fridge_tracker/core/extensions/context_extensions.dart';
import 'package:fridge_tracker/core/widgets/fridge_back_button.dart';

class FridgeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FridgeAppBar({
    super.key,
    this.shape,
    this.bottom,
    this.actions,
    this.titleText,
    this.titleWidget,
    this.backgroundColor,
    this.backButtonColor,
    this.systemUiOverlayStyle,
    this.showBackButton = false,
  }) : assert(titleText == null || titleWidget == null);

  final String? titleText;
  final Widget? titleWidget;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final SystemUiOverlayStyle? systemUiOverlayStyle;
  final Color? backButtonColor;
  final bool showBackButton;
  final ShapeBorder? shape;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      key: key,
      leadingWidth: 100.w,
      backgroundColor:
      backgroundColor ?? Theme.of(context).colorScheme.background,
      systemOverlayStyle: systemUiOverlayStyle,
      automaticallyImplyLeading: false,
      shape: shape,
      title: titleText != null
          ? Text(
        titleText!,
        style: context.textTheme.titleSmall?.copyWith(
          height: 1,
        ),
      )
          : titleWidget,
      leading: showBackButton
          ? Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 8.w),
        child: FridgeBackButton(
          foregroundColor:
          backButtonColor ?? Theme.of(context).colorScheme.secondary,
        ),
      )
          : null,
      actions: actions,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
