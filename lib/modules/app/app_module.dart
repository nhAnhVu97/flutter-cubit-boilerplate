import 'package:boilerplate_app/core/di/di.dart';
import 'package:boilerplate_app/modules/app/cubit/app_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppModule {
  static void register({required SharedPreferences pref}) {
    di.registerSingleton<AppCubit>(AppCubit(pref: pref));
  }
}
