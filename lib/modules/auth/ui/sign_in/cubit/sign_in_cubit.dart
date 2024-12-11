import 'package:bloc/bloc.dart';
import 'package:boilerplate_app/modules/auth/cubit/auth_cubit.dart';
import 'package:boilerplate_app/modules/auth/repository/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.dart';
part 'sign_in_cubit.freezed.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit({
    required this.authRepo,
    required this.authCubit,
  }) : super(const SignInState.initial());

  final AuthRepository authRepo;
  final AuthCubit authCubit;
}
