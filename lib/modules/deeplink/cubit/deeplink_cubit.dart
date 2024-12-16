import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deeplink_state.dart';
part 'deeplink_cubit.freezed.dart';

class DeeplinkCubit extends Cubit<DeeplinkState> {
  DeeplinkCubit() : super(const DeeplinkState());

  void setDeeplinkInitial(String path) {
    emit(state.copyWith(initialPath: path));
  }

  void setDeeplinkPath(String? path) {
    emit(state.copyWith(path: path));
  }
}
