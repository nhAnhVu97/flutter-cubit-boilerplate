import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'colors.dart';
part 'text_styles.dart';
part 'app_theme_data.dart';
part 'app_theme.tailor.dart';

@TailorMixin()
class AppTheme extends ThemeExtension<AppTheme> with _$AppThemeTailorMixin {
  const AppTheme({
    required this.color,
    required this.text,
  });

  @override
  final AppColors color;

  @override
  final AppTextStyles text;
}
