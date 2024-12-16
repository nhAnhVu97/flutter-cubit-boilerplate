import 'package:auto_route/auto_route.dart';
import 'package:boilerplate_app/core/di/di.dart';
import 'package:boilerplate_app/modules/auth/ui/sign_in/cubit/sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.get<SignInCubit>(),
      child: const Scaffold(
        body: Center(
          child: Text('sign in'),
        ),
      ),
    );
  }
}
