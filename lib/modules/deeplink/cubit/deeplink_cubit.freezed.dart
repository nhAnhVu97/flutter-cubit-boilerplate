// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deeplink_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeeplinkState {
  String? get initialPath => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  /// Create a copy of DeeplinkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeeplinkStateCopyWith<DeeplinkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeeplinkStateCopyWith<$Res> {
  factory $DeeplinkStateCopyWith(
          DeeplinkState value, $Res Function(DeeplinkState) then) =
      _$DeeplinkStateCopyWithImpl<$Res, DeeplinkState>;
  @useResult
  $Res call({String? initialPath, String? path});
}

/// @nodoc
class _$DeeplinkStateCopyWithImpl<$Res, $Val extends DeeplinkState>
    implements $DeeplinkStateCopyWith<$Res> {
  _$DeeplinkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeeplinkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialPath = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      initialPath: freezed == initialPath
          ? _value.initialPath
          : initialPath // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeeplinkStateImplCopyWith<$Res>
    implements $DeeplinkStateCopyWith<$Res> {
  factory _$$DeeplinkStateImplCopyWith(
          _$DeeplinkStateImpl value, $Res Function(_$DeeplinkStateImpl) then) =
      __$$DeeplinkStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? initialPath, String? path});
}

/// @nodoc
class __$$DeeplinkStateImplCopyWithImpl<$Res>
    extends _$DeeplinkStateCopyWithImpl<$Res, _$DeeplinkStateImpl>
    implements _$$DeeplinkStateImplCopyWith<$Res> {
  __$$DeeplinkStateImplCopyWithImpl(
      _$DeeplinkStateImpl _value, $Res Function(_$DeeplinkStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeeplinkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialPath = freezed,
    Object? path = freezed,
  }) {
    return _then(_$DeeplinkStateImpl(
      initialPath: freezed == initialPath
          ? _value.initialPath
          : initialPath // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeeplinkStateImpl implements _DeeplinkState {
  const _$DeeplinkStateImpl({this.initialPath, this.path});

  @override
  final String? initialPath;
  @override
  final String? path;

  @override
  String toString() {
    return 'DeeplinkState(initialPath: $initialPath, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeeplinkStateImpl &&
            (identical(other.initialPath, initialPath) ||
                other.initialPath == initialPath) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialPath, path);

  /// Create a copy of DeeplinkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeeplinkStateImplCopyWith<_$DeeplinkStateImpl> get copyWith =>
      __$$DeeplinkStateImplCopyWithImpl<_$DeeplinkStateImpl>(this, _$identity);
}

abstract class _DeeplinkState implements DeeplinkState {
  const factory _DeeplinkState(
      {final String? initialPath, final String? path}) = _$DeeplinkStateImpl;

  @override
  String? get initialPath;
  @override
  String? get path;

  /// Create a copy of DeeplinkState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeeplinkStateImplCopyWith<_$DeeplinkStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
