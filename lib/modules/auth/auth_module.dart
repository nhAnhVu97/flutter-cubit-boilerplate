import 'package:boilerplate_app/core/configs/dio_config.dart';
import 'package:boilerplate_app/core/di/di.dart';
import 'package:boilerplate_app/modules/auth/cubit/auth_cubit.dart';
import 'package:boilerplate_app/modules/auth/data/auth_api_service.dart';
import 'package:boilerplate_app/modules/auth/data/auth_local_service.dart';
import 'package:boilerplate_app/modules/auth/repository/auth_repository.dart';
import 'package:boilerplate_app/modules/auth/ui/sign_in/cubit/sign_in_cubit.dart';
import 'package:boilerplate_app/modules/auth/ui/sign_up/cubit/sign_up_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthModule {
  static void register({required SharedPreferences pref}) {
    di
      ..registerFactory(() => AuthApiService(di.get<DioConfig>().dioInstance))
      ..registerFactory(AuthLocalService.new)
      ..registerFactory(() => AuthRepository(
            authApiService: di.get<AuthApiService>(),
            authLocalService: di.get<AuthLocalService>(),
          ))
      ..registerFactory(() => SignInCubit(
            authCubit: di.get<AuthCubit>(),
            authRepo: di.get<AuthRepository>(),
          ))
      ..registerFactory(() => SignUpCubit(
            authCubit: di.get<AuthCubit>(),
            authRepo: di.get<AuthRepository>(),
          ))
      ..registerSingleton(AuthCubit(pref: pref));
  }
}
