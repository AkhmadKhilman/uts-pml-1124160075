import 'package:flutter/material.dart';

extension ThemeShortcut on BuildContext {
  ColorScheme get themeColor => Theme.of(this).colorScheme;

  TextTheme get themeText => Theme.of(this).textTheme;
}
