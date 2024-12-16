import 'package:boilerplate_app/core/di/di.dart';
import 'package:boilerplate_app/modules/deeplink/cubit/deeplink_cubit.dart';

class DeeplinkModule {
  static void register() {
    di.registerSingleton<DeeplinkCubit>(DeeplinkCubit());
  }
}
