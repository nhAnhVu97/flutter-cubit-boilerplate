import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_service.g.dart';

@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio) = _AuthApiService;

  @POST('/sign-in')
  Future<HttpResponse<dynamic>> signIn();

  @POST('/sign-up')
  Future<HttpResponse<dynamic>> signUp();
}
