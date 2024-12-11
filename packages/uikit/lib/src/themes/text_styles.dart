part of 'app_theme.dart';

@TailorMixinComponent()
class AppTextStyles extends ThemeExtension<AppTextStyles> with _$AppTextStylesTailorMixin {
  AppTextStyles({
    required this.text10,
    required this.text12,
    required this.text14,
    required this.text16,
    required this.text20,
    required this.text22,
    required this.text24,
    required this.text26,
    required this.text32,
    required this.text36,
    required this.text42,
    required this.text48,
    required this.text56,
  });

  @override
  final TextStyle text10;

  @override
  final TextStyle text12;

  @override
  final TextStyle text14;

  @override
  final TextStyle text16;

  @override
  final TextStyle text20;

  @override
  final TextStyle text22;

  @override
  final TextStyle text24;

  @override
  final TextStyle text26;

  @override
  final TextStyle text32;

  @override
  final TextStyle text36;

  @override
  final TextStyle text42;

  @override
  final TextStyle text48;

  @override
  final TextStyle text56;
}

extension AppTextStylesX on TextStyle {
  TextStyle get med => copyWith(fontWeight: FontWeight.w500);
  TextStyle get semi => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
}
