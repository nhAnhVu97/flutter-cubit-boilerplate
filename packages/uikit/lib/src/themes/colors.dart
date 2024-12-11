part of 'app_theme.dart';

@TailorMixinComponent()
class AppColors extends ThemeExtension<AppColors> with _$AppColorsTailorMixin {
  AppColors({
    required this.brightness,
    required this.barrier,
    required this.background,
    required this.foreground,
    required this.primary,
    required this.primaryForeground,
    required this.secondary,
    required this.secondaryForeground,
    required this.muted,
    required this.mutedForeground,
    required this.destructive,
    required this.destructiveForeground,
    required this.error,
    required this.errorForeground,
    required this.border,
  });

  @override
  final Brightness brightness;

  @override
  final Color barrier;

  @override
  final Color background;

  @override
  final Color foreground;

  @override
  final Color primary;

  @override
  final Color primaryForeground;

  @override
  final Color secondary;

  @override
  final Color secondaryForeground;

  @override
  final Color muted;

  @override
  final Color mutedForeground;

  @override
  final Color destructive;

  @override
  final Color destructiveForeground;

  @override
  final Color error;

  @override
  final Color errorForeground;

  @override
  final Color border;
}
