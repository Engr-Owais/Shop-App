import 'package:flutter/material.dart';
import 'package:shopping_app/core/extensions/app_extensions.dart';

class PrimaryIcon extends Icon {
  PrimaryIcon({
    Key? key,
    required IconData icon,
    required BuildContext context,
  }) : super(icon, key: key, color: context.primaryColor);
}
