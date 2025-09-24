import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fridge_tracker/core/extensions/context_extensions.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    Key? key,
    this.image,
    this.title,
    this.titleStyle,
    this.message,
    this.messageStyle,
    this.elevation,
    this.children,
    this.padding,
    this.insetPadding,
    this.canBeClosed = true,
    this.backgroundColor = Colors.white,
    this.backgroundBlur = false,
    this.alignment,
  }) : super(key: key);

  final Widget? image;
  final String? title;
  final TextStyle? titleStyle;

  final String? message;
  final TextStyle? messageStyle;

  final double? elevation;
  final AlignmentGeometry? alignment;

  final bool canBeClosed;
  final EdgeInsets? padding;
  final EdgeInsets? insetPadding;
  final List<Widget>? children;
  final Color backgroundColor;
  final bool backgroundBlur;

  static Future<void> showError({
    required BuildContext context,
    String? title,
    String? text,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (state) => AppDialog(
        title: title ?? 'Something went wrong',
        message: text,
        children: <Widget>[
          TextButton(
            onPressed: context.rootRouter.pop,
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final dialogContent = _DialogContent(
      image: image,
      title: title,
      titleStyle: titleStyle,
      message: message,
      messageStyle: messageStyle,
      backgroundColor: backgroundColor,
      padding: padding,
      children: children,
    );

    return Dialog(
      alignment: alignment,
      elevation: elevation,
      backgroundColor: Colors.transparent,
      insetPadding: insetPadding ?? EdgeInsets.symmetric(horizontal: 20.w),
      clipBehavior: Clip.antiAlias,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Stack(
        children: <Widget>[
          if (backgroundBlur)
            _BackgroundBlur(child: dialogContent)
          else
            dialogContent,
          if (canBeClosed) const _CloseButton(),
        ],
      ),
    );
  }
}

class _BackgroundBlur extends StatelessWidget {
  final Widget child;

  const _BackgroundBlur({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 50.r,
            sigmaY: 50.r,
          ),
          child: child,
        ),
      ),
    );
  }
}

class _DialogContent extends StatelessWidget {
  const _DialogContent({
    Key? key,
    this.image,
    this.title,
    this.titleStyle,
    this.message,
    this.messageStyle,
    this.children,
    this.backgroundColor = Colors.white,
    this.padding,
  }) : super(key: key);

  final Widget? image;
  final String? title;
  final TextStyle? titleStyle;

  final String? message;
  final TextStyle? messageStyle;

  final EdgeInsets? padding;
  final List<Widget>? children;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      width: double.infinity,
      padding: padding ??
          EdgeInsets.only(
            left: 30.w,
            right: 30.w,
            top: 46.h,
            bottom: 12.h,
          ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          if (image != null) image!,
          if (title != null) ...[
            if (image != null) SizedBox(height: 10.h),
            _Title(
              title: title,
              style: titleStyle,
            ),
          ],
          if (message != null) ...[
            if (title != null) SizedBox(height: 16.h),
            _Message(
              message: message,
              style: messageStyle,
            ),
          ],
          if (children != null) ...[
            if (title != null || message != null) SizedBox(height: 25.h),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: children!,
            ),
          ],
        ],
      ),
    );
    // return
  }
}

class _Message extends StatelessWidget {
  const _Message({
    Key? key,
    required this.message,
    this.style,
  }) : super(key: key);

  final String? message;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      message!,
      textAlign: TextAlign.center,
      style: style ??
          context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w100,
          ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
    required this.title,
    this.style,
  }) : super(key: key);

  final String? title;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      textAlign: TextAlign.center,
      style: style ?? context.textTheme.titleSmall,
    );
  }
}

class _CloseButton extends StatelessWidget {
  const _CloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20.sp,
      right: 20.sp,
      child: GestureDetector(
        onTap: context.rootRouter.popForced,
        child: Icon(
          Icons.close,
          size: 25.h,
          color: Colors.black45,
        ),
      ),
    );
  }
}
