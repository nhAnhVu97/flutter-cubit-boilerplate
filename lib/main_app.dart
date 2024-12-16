import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:boilerplate_app/core/di/di.dart';
import 'package:boilerplate_app/core/enums/localization_enum.dart';
import 'package:boilerplate_app/core/enums/theme_enum.dart';
import 'package:boilerplate_app/core/routes/app_router.dart';
import 'package:boilerplate_app/localizations/l10n.dart';
import 'package:boilerplate_app/modules/app/cubit/app_cubit.dart';
import 'package:boilerplate_app/modules/auth/cubit/auth_cubit.dart';
import 'package:boilerplate_app/modules/deeplink/constants/deeplink_constants.dart';
import 'package:boilerplate_app/modules/deeplink/cubit/deeplink_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(create: (_) => di.get<AuthCubit>()),
        BlocProvider<AppCubit>(create: (_) => di.get<AppCubit>()),
        BlocProvider<DeeplinkCubit>(create: (_) => di.get<DeeplinkCubit>()),
      ],
      child: BlocSelector<AppCubit, AppState, ETheme>(
        selector: (state) => state.themeState.theme,
        builder: (context, theme) {
          return BlocSelector<AppCubit, AppState, ELocalization>(
            selector: (state) => state.localizationState.localization,
            builder: (context, localization) {
              return MaterialApp.router(
                theme: ThemeData(extensions: [theme.data]),
                themeMode: theme.mode,
                routerConfig: di<AppRouter>().config(
                  deepLinkBuilder: _deepLinkBuilder,
                ),
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                locale: localization.locale,
              );
            },
          );
        },
      ),
    );
  }

  FutureOr<DeepLink> _deepLinkBuilder(PlatformDeepLink deepLink) {
    if (deepLink.path == '/') return DeepLink.defaultPath;

    final isAvailablePath = DeeplinkConstants.availableDeeplinkPaths.contains(deepLink.path);
    if (!isAvailablePath) return DeepLink.defaultPath;

    if (deepLink.initial) {
      // To handle deeplink after splash screen completed
      di.get<DeeplinkCubit>().setDeeplinkInitial(deepLink.path);
      return DeepLink.defaultPath;
    } else {
      // To handle deeplink when app is in opening
      di.get<DeeplinkCubit>().setDeeplinkPath(deepLink.path);
      return DeepLink.none;
    }
  }
}
