import 'package:auto_route/auto_route.dart';
import 'package:boilerplate_app/core/di/di.dart';
import 'package:boilerplate_app/core/routes/app_router.gr.dart';
import 'package:boilerplate_app/modules/app/cubit/app_cubit.dart';
import 'package:boilerplate_app/modules/deeplink/constants/deeplink_constants.dart';
import 'package:boilerplate_app/modules/deeplink/cubit/deeplink_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toolkit/toolkit.dart';

@RoutePage()
class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        _launchAppListener(),
        _deeplinkListener(),
      ],
      child: const AutoRouter(),
    );
  }

  BlocListener<AppCubit, AppState> _launchAppListener() {
    return BlocListener<AppCubit, AppState>(
      listener: (context, state) {
        if (state.launchLoadState is LaunchLoadCompletedState) {
          // Navigate to next route
          _navigateAfterLaunching();
        }

        if (state.launchLoadState is LaunchLoadFailedlState) {
          //
        }
      },
    );
  }

  BlocListener<DeeplinkCubit, DeeplinkState> _deeplinkListener() {
    return BlocListener<DeeplinkCubit, DeeplinkState>(
      listenWhen: (previous, current) => previous.path != current.path,
      listener: (context, state) {
        final path = state.path;
        if (path == null || !DeeplinkConstants.availableDeeplinkPaths.contains(path)) return;

        // Transform path before navigate
        // ...
        // ...

        _navigateByDeeplinking(path);
      },
    );
  }

  void _navigateByDeeplinking(String path) {
    switch (path) {
      case '/sign-in':
        AutoRouter.of(context).push(const SignInRoute());
      case '/sign-up':
        AutoRouter.of(context).push(const SignUpRoute());
      default:
    }

    di.get<DeeplinkCubit>().setDeeplinkPath(null);
  }

  void _navigateAfterLaunching() {
    final deeplinkPath = di.get<DeeplinkCubit>().state.initialPath;
    if (deeplinkPath != null) {
      AppLogger.d('Navigate app by deeplink $deeplinkPath');
      _navigateByDeeplinking(deeplinkPath);
      return;
    }

    AutoRouter.of(context).push(const SignInRoute());
  }
}
