part of 'deeplink_cubit.dart';

@freezed
class DeeplinkState with _$DeeplinkState {
  const factory DeeplinkState({
    String? initialPath,
    String? path,
  }) = _DeeplinkState;
}
