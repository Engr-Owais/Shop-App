import 'package:flutter/material.dart';
import 'package:shopping_app/core/extensions/app_extensions.dart';

class Headline6Text extends Text {
  Headline6Text({
    Key? key,
    required BuildContext context,
    required String data,
    Color? color,
  }) : super(
          data,
          key: key,
          style: context.textTheme.titleLarge?.copyWith(
              color: color ?? context.secondaryVariant,
              fontSize: 50,
              fontWeight: FontWeight.bold),
        );
}
