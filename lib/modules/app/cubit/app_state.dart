part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required LaunchLoadState launchLoadState,
    required AppThemeState themeState,
    required AppLocalizationState localizationState,
  }) = _AppState;
}

@freezed
class LaunchLoadState with _$LaunchLoadState {
  factory LaunchLoadState.initial() = LaunchLoadInitialState;
  factory LaunchLoadState.completed() = LaunchLoadCompletedState;
  factory LaunchLoadState.failed() = LaunchLoadFailedlState;
}

@freezed
class AppThemeState with _$AppThemeState {
  const factory AppThemeState({
    @Default(ETheme.light) ETheme theme,
  }) = _AppThemeState;
}

@freezed
class AppLocalizationState with _$AppLocalizationState {
  const factory AppLocalizationState({
    @Default(ELocalization.en) ELocalization localization,
  }) = _AppLocalizationState;
}
