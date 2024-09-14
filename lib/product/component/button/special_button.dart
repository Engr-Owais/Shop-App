import 'package:flutter/material.dart';
import '../text/primary_bold_text.dart';
import 'package:shopping_app/core/extensions/app_extensions.dart';

class SpecialButton extends ElevatedButton {
  SpecialButton(
      {super.key, void Function()? onTap, required BuildContext context})
      : super(
          onPressed: onTap ?? () {},
          child: PrimaryBoldText(context: context, data: 'Try again'),
          style: _style(context),
        );

  static ButtonStyle _style(BuildContext context) => ButtonStyle(
        overlayColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return context.primaryColor.withOpacity(0.2);
            }
            if (states.contains(WidgetState.focused) ||
                states.contains(WidgetState.pressed)) {
              return context.primaryColor.withOpacity(0.2);
            }
            return context.primaryColor;
          },
        ),
        backgroundColor:
            WidgetStateProperty.all<Color>(context.secondaryVariant),
      );
}
