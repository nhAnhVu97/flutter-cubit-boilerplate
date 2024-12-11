import 'package:bloc/bloc.dart';
import 'package:boilerplate_app/core/configs/app_config.dart';
import 'package:boilerplate_app/core/di/di.dart';
import 'package:boilerplate_app/core/utils/bloc_observer.dart';
import 'package:boilerplate_app/core/utils/permission/app_permission.dart';
import 'package:boilerplate_app/modules/app/app_module.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:toolkit/toolkit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AppLogger.enable = AppConfig.flavor.isDev;
  AppLogger.d('${AppConfig()}');

  FlutterError.onError = (details) {
    AppLogger.e(details.exceptionAsString(), stackTrace: details.stack);
  };

  if (kDebugMode) {
    Bloc.observer = const AppBlocObserver();
  }

  //- App Permissions
  await AppPermission.requestAppPermission();

  //- DI
  await configureDependencies();

  runApp(const App());
}
