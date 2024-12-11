// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppThemeTailorMixin on ThemeExtension<AppTheme> {
  AppColors get color;
  AppTextStyles get text;

  @override
  AppTheme copyWith({
    AppColors? color,
    AppTextStyles? text,
  }) {
    return AppTheme(
      color: color ?? this.color,
      text: text ?? this.text,
    );
  }

  @override
  AppTheme lerp(covariant ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this as AppTheme;
    return AppTheme(
      color: color.lerp(other.color, t) as AppColors,
      text: text.lerp(other.text, t) as AppTextStyles,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTheme &&
            const DeepCollectionEquality().equals(color, other.color) &&
            const DeepCollectionEquality().equals(text, other.text));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(text),
    );
  }
}

extension AppThemeBuildContextProps on BuildContext {
  AppTheme get appTheme => Theme.of(this).extension<AppTheme>()!;
  AppColors get color => appTheme.color;
  AppTextStyles get text => appTheme.text;
}

mixin _$AppColorsTailorMixin on ThemeExtension<AppColors> {
  Brightness get brightness;
  Color get barrier;
  Color get background;
  Color get foreground;
  Color get primary;
  Color get primaryForeground;
  Color get secondary;
  Color get secondaryForeground;
  Color get muted;
  Color get mutedForeground;
  Color get destructive;
  Color get destructiveForeground;
  Color get error;
  Color get errorForeground;
  Color get border;

  @override
  AppColors copyWith({
    Brightness? brightness,
    Color? barrier,
    Color? background,
    Color? foreground,
    Color? primary,
    Color? primaryForeground,
    Color? secondary,
    Color? secondaryForeground,
    Color? muted,
    Color? mutedForeground,
    Color? destructive,
    Color? destructiveForeground,
    Color? error,
    Color? errorForeground,
    Color? border,
  }) {
    return AppColors(
      brightness: brightness ?? this.brightness,
      barrier: barrier ?? this.barrier,
      background: background ?? this.background,
      foreground: foreground ?? this.foreground,
      primary: primary ?? this.primary,
      primaryForeground: primaryForeground ?? this.primaryForeground,
      secondary: secondary ?? this.secondary,
      secondaryForeground: secondaryForeground ?? this.secondaryForeground,
      muted: muted ?? this.muted,
      mutedForeground: mutedForeground ?? this.mutedForeground,
      destructive: destructive ?? this.destructive,
      destructiveForeground:
          destructiveForeground ?? this.destructiveForeground,
      error: error ?? this.error,
      errorForeground: errorForeground ?? this.errorForeground,
      border: border ?? this.border,
    );
  }

  @override
  AppColors lerp(covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this as AppColors;
    return AppColors(
      brightness: t < 0.5 ? brightness : other.brightness,
      barrier: Color.lerp(barrier, other.barrier, t)!,
      background: Color.lerp(background, other.background, t)!,
      foreground: Color.lerp(foreground, other.foreground, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      primaryForeground:
          Color.lerp(primaryForeground, other.primaryForeground, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      secondaryForeground:
          Color.lerp(secondaryForeground, other.secondaryForeground, t)!,
      muted: Color.lerp(muted, other.muted, t)!,
      mutedForeground: Color.lerp(mutedForeground, other.mutedForeground, t)!,
      destructive: Color.lerp(destructive, other.destructive, t)!,
      destructiveForeground:
          Color.lerp(destructiveForeground, other.destructiveForeground, t)!,
      error: Color.lerp(error, other.error, t)!,
      errorForeground: Color.lerp(errorForeground, other.errorForeground, t)!,
      border: Color.lerp(border, other.border, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColors &&
            const DeepCollectionEquality()
                .equals(brightness, other.brightness) &&
            const DeepCollectionEquality().equals(barrier, other.barrier) &&
            const DeepCollectionEquality()
                .equals(background, other.background) &&
            const DeepCollectionEquality()
                .equals(foreground, other.foreground) &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality()
                .equals(primaryForeground, other.primaryForeground) &&
            const DeepCollectionEquality().equals(secondary, other.secondary) &&
            const DeepCollectionEquality()
                .equals(secondaryForeground, other.secondaryForeground) &&
            const DeepCollectionEquality().equals(muted, other.muted) &&
            const DeepCollectionEquality()
                .equals(mutedForeground, other.mutedForeground) &&
            const DeepCollectionEquality()
                .equals(destructive, other.destructive) &&
            const DeepCollectionEquality()
                .equals(destructiveForeground, other.destructiveForeground) &&
            const DeepCollectionEquality().equals(error, other.error) &&
            const DeepCollectionEquality()
                .equals(errorForeground, other.errorForeground) &&
            const DeepCollectionEquality().equals(border, other.border));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(brightness),
      const DeepCollectionEquality().hash(barrier),
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(foreground),
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(primaryForeground),
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(secondaryForeground),
      const DeepCollectionEquality().hash(muted),
      const DeepCollectionEquality().hash(mutedForeground),
      const DeepCollectionEquality().hash(destructive),
      const DeepCollectionEquality().hash(destructiveForeground),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(errorForeground),
      const DeepCollectionEquality().hash(border),
    );
  }
}

mixin _$AppTextStylesTailorMixin on ThemeExtension<AppTextStyles> {
  TextStyle get text10;
  TextStyle get text12;
  TextStyle get text14;
  TextStyle get text16;
  TextStyle get text20;
  TextStyle get text22;
  TextStyle get text24;
  TextStyle get text26;
  TextStyle get text32;
  TextStyle get text36;
  TextStyle get text42;
  TextStyle get text48;
  TextStyle get text56;

  @override
  AppTextStyles copyWith({
    TextStyle? text10,
    TextStyle? text12,
    TextStyle? text14,
    TextStyle? text16,
    TextStyle? text20,
    TextStyle? text22,
    TextStyle? text24,
    TextStyle? text26,
    TextStyle? text32,
    TextStyle? text36,
    TextStyle? text42,
    TextStyle? text48,
    TextStyle? text56,
  }) {
    return AppTextStyles(
      text10: text10 ?? this.text10,
      text12: text12 ?? this.text12,
      text14: text14 ?? this.text14,
      text16: text16 ?? this.text16,
      text20: text20 ?? this.text20,
      text22: text22 ?? this.text22,
      text24: text24 ?? this.text24,
      text26: text26 ?? this.text26,
      text32: text32 ?? this.text32,
      text36: text36 ?? this.text36,
      text42: text42 ?? this.text42,
      text48: text48 ?? this.text48,
      text56: text56 ?? this.text56,
    );
  }

  @override
  AppTextStyles lerp(covariant ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) return this as AppTextStyles;
    return AppTextStyles(
      text10: TextStyle.lerp(text10, other.text10, t)!,
      text12: TextStyle.lerp(text12, other.text12, t)!,
      text14: TextStyle.lerp(text14, other.text14, t)!,
      text16: TextStyle.lerp(text16, other.text16, t)!,
      text20: TextStyle.lerp(text20, other.text20, t)!,
      text22: TextStyle.lerp(text22, other.text22, t)!,
      text24: TextStyle.lerp(text24, other.text24, t)!,
      text26: TextStyle.lerp(text26, other.text26, t)!,
      text32: TextStyle.lerp(text32, other.text32, t)!,
      text36: TextStyle.lerp(text36, other.text36, t)!,
      text42: TextStyle.lerp(text42, other.text42, t)!,
      text48: TextStyle.lerp(text48, other.text48, t)!,
      text56: TextStyle.lerp(text56, other.text56, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTextStyles &&
            const DeepCollectionEquality().equals(text10, other.text10) &&
            const DeepCollectionEquality().equals(text12, other.text12) &&
            const DeepCollectionEquality().equals(text14, other.text14) &&
            const DeepCollectionEquality().equals(text16, other.text16) &&
            const DeepCollectionEquality().equals(text20, other.text20) &&
            const DeepCollectionEquality().equals(text22, other.text22) &&
            const DeepCollectionEquality().equals(text24, other.text24) &&
            const DeepCollectionEquality().equals(text26, other.text26) &&
            const DeepCollectionEquality().equals(text32, other.text32) &&
            const DeepCollectionEquality().equals(text36, other.text36) &&
            const DeepCollectionEquality().equals(text42, other.text42) &&
            const DeepCollectionEquality().equals(text48, other.text48) &&
            const DeepCollectionEquality().equals(text56, other.text56));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(text10),
      const DeepCollectionEquality().hash(text12),
      const DeepCollectionEquality().hash(text14),
      const DeepCollectionEquality().hash(text16),
      const DeepCollectionEquality().hash(text20),
      const DeepCollectionEquality().hash(text22),
      const DeepCollectionEquality().hash(text24),
      const DeepCollectionEquality().hash(text26),
      const DeepCollectionEquality().hash(text32),
      const DeepCollectionEquality().hash(text36),
      const DeepCollectionEquality().hash(text42),
      const DeepCollectionEquality().hash(text48),
      const DeepCollectionEquality().hash(text56),
    );
  }
}
