import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

enum ETheme {
  dark,
  light,
}

extension EThemeExtension on ETheme {
  AppTheme get data {
    switch (this) {
      case ETheme.dark:
        return AppThemeData.dark;
      case ETheme.light:
        return AppThemeData.light;
    }
  }

  ThemeMode get mode {
    switch (this) {
      case ETheme.dark:
        return ThemeMode.dark;
      case ETheme.light:
        return ThemeMode.light;
    }
  }
}
