import 'package:flutter/material.dart';
import 'package:shopping_app/core/extensions/app_extensions.dart';

class SpecialIconCard extends Card {
  SpecialIconCard(
      {super.key, required BuildContext context, required IconData icon})
      : super(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: context.lowBorderRadius),
          child: Padding(
            padding: context.paddingLow,
            child: Icon(
              icon,
              color: context.primaryColor,
            ),
          ),
        );
}
