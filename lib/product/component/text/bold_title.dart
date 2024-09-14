import 'package:flutter/material.dart';
import 'package:shopping_app/core/extensions/app_extensions.dart';

class BoldTitle extends Text {
  BoldTitle(
      {Key? key,
      required String data,
      required BuildContext context,
      Color? color})
      : super(
          data,
          key: key,
          style: context.textTheme.titleLarge?.copyWith(
            color: color ?? context.secondaryVariant,
            fontWeight: FontWeight.bold,
          ),
        );
}
