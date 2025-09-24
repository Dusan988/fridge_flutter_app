import 'package:flutter/material.dart';
import 'package:fridge_tracker/core/extensions/context_extensions.dart';
import 'package:fridge_tracker/core/widgets/app_dialog.dart';

void offlineDialog(BuildContext context) {
  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (_) => AppDialog(
      title: 'No Internet',
      message: 'Please check your network settings',
      children: <Widget>[
        TextButton(onPressed: context.rootRouter.maybePop, child: Text('OK')),
      ],
    ),
  );
}