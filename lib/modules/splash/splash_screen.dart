import 'package:auto_route/auto_route.dart';
import 'package:boilerplate_app/modules/app/cubit/app_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AppCubit, AppState>(
      listenWhen: (previous, current) => previous.launchLoadState != current.launchLoadState,
      listener: _launchAppListener,
      child: const Scaffold(body: Center(child: CupertinoActivityIndicator())),
    );
  }

  void _launchAppListener(BuildContext context, AppState state) {
    if (state.launchLoadState is LaunchLoadCompletedState) {
      // Navigate to next route
    }

    if (state.launchLoadState is LaunchLoadFailedlState) {
      //
    }
  }
}
