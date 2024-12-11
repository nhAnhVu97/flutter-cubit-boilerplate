import 'package:bloc/bloc.dart';
import 'package:boilerplate_app/core/constants/shared_pref_constants.dart';
import 'package:boilerplate_app/core/enums/localization_enum.dart';
import 'package:boilerplate_app/core/enums/theme_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toolkit/toolkit.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit({
    required this.pref,
  }) : super(AppState(
          launchLoadState: LaunchLoadState.initial(),
          themeState: const AppThemeState(),
          localizationState: const AppLocalizationState(),
        )) {
    initialize();
  }

  final SharedPreferences pref;

  Future<void> initialize() async {
    try {
      _loadTheme();
      _loadLocalization();

      await Future<void>.delayed(const Duration(seconds: 1));
      emit(state.copyWith(launchLoadState: LaunchLoadState.completed()));
    } catch (error, stack) {
      AppLogger.e('app load failed', error: error, stackTrace: stack);
      emit(state.copyWith(launchLoadState: LaunchLoadState.failed()));
    }
  }

  void changeLocalization(ELocalization locale) {
    pref.setString(APP_LOCALIZATION, locale.name);
    emit(state.copyWith.localizationState(localization: locale));
  }

  void _loadLocalization() {
    final savedLocale = pref.getString(APP_LOCALIZATION);
    if (savedLocale == ELocalization.en.name) {
      emit(state.copyWith.localizationState(localization: ELocalization.en));
    }

    if (savedLocale == ELocalization.es.name) {
      emit(state.copyWith.localizationState(localization: ELocalization.es));
    }

    AppLogger.d('Current locale -> ${state.localizationState.localization}');
  }

  void changeTheme(ETheme theme) {
    pref.setString(APP_THEME, theme.name);
    emit(state.copyWith.themeState(theme: theme));
  }

  void _loadTheme() {
    final savedTheme = pref.getString(APP_THEME);
    if (savedTheme == ETheme.dark.name) {
      emit(state.copyWith.themeState(theme: ETheme.dark));
    }

    if (savedTheme == ETheme.light.name) {
      emit(state.copyWith.themeState(theme: ETheme.light));
    }

    AppLogger.d('Current theme -> ${state.themeState.theme}');
  }
}
