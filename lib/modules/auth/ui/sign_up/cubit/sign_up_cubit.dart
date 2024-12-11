import 'package:bloc/bloc.dart';
import 'package:boilerplate_app/modules/auth/cubit/auth_cubit.dart';
import 'package:boilerplate_app/modules/auth/repository/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({
    required this.authRepo,
    required this.authCubit,
  }) : super(const SignUpState.initial());

  final AuthRepository authRepo;
  final AuthCubit authCubit;
}
