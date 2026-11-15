import 'package:flutter/material.dart';

extension ThemeShortcut on BuildContext {
  ColorScheme get themeColor => Theme.of(this).colorScheme;

  TextTheme get themeText => Theme.of(this).textTheme;

  Color get successColor => const Color(0xFF4CAF50);
  Color get warningColor => const Color(0xFFFF9800);
  Color get errorColor => Theme.of(this).colorScheme.error;
}
