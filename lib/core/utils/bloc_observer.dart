import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toolkit/toolkit.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    AppLogger.w('Cubit created -> ${bloc.runtimeType}');
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    AppLogger.w('Cubit closed -> ${bloc.runtimeType}');
    super.onClose(bloc);
  }
}
