import 'package:auto_route/auto_route.dart';
import 'package:boilerplate_app/core/routes/app_router.gr.dart';
import 'package:boilerplate_app/modules/app/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          // Handle open app failed
        }
      },
    );
  }

  void _navigateAfterLaunching() {
    AutoRouter.of(context).push(const SignInRoute());
  }
}
