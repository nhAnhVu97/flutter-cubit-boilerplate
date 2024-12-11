import 'package:auto_route/auto_route.dart';
import 'package:boilerplate_app/core/di/di.dart';
import 'package:boilerplate_app/modules/auth/ui/sign_up/cubit/sign_up_cubit.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _cubit = di.get<SignUpCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _cubit,
      child: const Placeholder(),
    );
  }
}
