import 'package:flutter/material.dart';
import 'package:shopping_app/core/extensions/app_extensions.dart';

class PrimaryBoldText extends Text {
  PrimaryBoldText({
    Key? key,
    required BuildContext context,
    required String data,
  }) : super(
          _formatData(data),
          key: key,
          style: TextStyle(
            color: context.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        );

  // Method to format the data properly
  static String _formatData(String data) {
    try {
      // Try to parse the string to double and format to 2 decimal places
      double value = double.parse(data);
      return value.toStringAsFixed(2);
    } catch (e) {
      // If parsing fails, return the original data (or handle error accordingly)
      return data;
    }
  }
}
