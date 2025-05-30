import 'package:boilerplate_app/core/di/di.dart';
import 'package:boilerplate_app/core/enums/localization_enum.dart';
import 'package:boilerplate_app/core/enums/theme_enum.dart';
import 'package:boilerplate_app/core/routes/app_router.dart';
import 'package:boilerplate_app/localizations/arb/app_localizations.dart';
import 'package:boilerplate_app/modules/app/cubit/app_cubit.dart';
import 'package:boilerplate_app/modules/auth/cubit/auth_cubit.dart';
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
                routerConfig: di<AppRouter>().config(),
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
}
