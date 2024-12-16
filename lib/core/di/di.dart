import 'package:boilerplate_app/core/configs/app_config.dart';
import 'package:boilerplate_app/core/configs/dio_config.dart';
import 'package:boilerplate_app/core/routes/app_router.dart';
import 'package:boilerplate_app/modules/app/app_module.dart';
import 'package:boilerplate_app/modules/auth/auth_module.dart';
import 'package:boilerplate_app/modules/deeplink/deeplink_module.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final di = GetIt.instance;

Future<void> configureDependencies() async {
  final pref = await SharedPreferences.getInstance();

  di
    ..registerSingleton<DioConfig>(DioConfig(baseUrl: AppConfig.baseUrl))
    ..registerSingleton<AppRouter>(AppRouter());

  DeeplinkModule.register();
  AuthModule.register(pref: pref);
  AppModule.register(pref: pref);
}
