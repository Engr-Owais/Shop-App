import 'package:flutter/material.dart';
import 'package:shopping_app/core/extensions/app_extensions.dart';

class CustomTextTheme extends TextTheme {
  final BuildContext context;

  const CustomTextTheme(this.context);

  TextStyle get headline1 =>
      Theme.of(context).textTheme.displayLarge!.copyWith(color: context.label);

  TextStyle get headline2 =>
      Theme.of(context).textTheme.displayMedium!.copyWith(color: context.label);

  TextStyle get headline3 =>
      Theme.of(context).textTheme.displaySmall!.copyWith(color: context.label);

  TextStyle get headline4 => Theme.of(context)
      .textTheme
      .headlineMedium!
      .copyWith(color: context.label);

  TextStyle get headline5 =>
      Theme.of(context).textTheme.headlineSmall!.copyWith(color: context.label);

  TextStyle get headline6 =>
      Theme.of(context).textTheme.titleLarge!.copyWith(color: context.label);

  TextStyle get subtitle1 =>
      Theme.of(context).textTheme.titleMedium!.copyWith(color: context.label);

  TextStyle get subtitle2 =>
      Theme.of(context).textTheme.titleSmall!.copyWith(color: context.label);

  TextStyle get bodyText1 =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(color: context.label);

  TextStyle get bodyText2 =>
      Theme.of(context).textTheme.bodyMedium!.copyWith(color: context.label);

  TextStyle get caption =>
      Theme.of(context).textTheme.bodySmall!.copyWith(color: context.label);

  TextStyle get button =>
      Theme.of(context).textTheme.labelLarge!.copyWith(color: context.label);

  TextStyle get overline =>
      Theme.of(context).textTheme.labelSmall!.copyWith(color: context.label);
}
