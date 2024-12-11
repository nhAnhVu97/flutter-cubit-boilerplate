import 'package:boilerplate_app/modules/auth/data/auth_api_service.dart';
import 'package:boilerplate_app/modules/auth/data/auth_local_service.dart';
import 'package:toolkit/toolkit.dart';

class AuthRepository {
  AuthRepository({
    required this.authApiService,
    required this.authLocalService,
  });

  final AuthApiService authApiService;
  final AuthLocalService authLocalService;

  Future<Result<dynamic, Exception>> signIn() async {
    try {
      final result = await authApiService.signIn();
      return Result.success(result.data);
    } catch (error, stack) {
      AppLogger.e('Sign in error', error: error, stackTrace: stack);
      return Result.error(Exception(error));
    }
  }
}
