// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  LaunchLoadState get launchLoadState => throw _privateConstructorUsedError;
  AppThemeState get themeState => throw _privateConstructorUsedError;
  AppLocalizationState get localizationState =>
      throw _privateConstructorUsedError;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {LaunchLoadState launchLoadState,
      AppThemeState themeState,
      AppLocalizationState localizationState});

  $LaunchLoadStateCopyWith<$Res> get launchLoadState;
  $AppThemeStateCopyWith<$Res> get themeState;
  $AppLocalizationStateCopyWith<$Res> get localizationState;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? launchLoadState = null,
    Object? themeState = null,
    Object? localizationState = null,
  }) {
    return _then(_value.copyWith(
      launchLoadState: null == launchLoadState
          ? _value.launchLoadState
          : launchLoadState // ignore: cast_nullable_to_non_nullable
              as LaunchLoadState,
      themeState: null == themeState
          ? _value.themeState
          : themeState // ignore: cast_nullable_to_non_nullable
              as AppThemeState,
      localizationState: null == localizationState
          ? _value.localizationState
          : localizationState // ignore: cast_nullable_to_non_nullable
              as AppLocalizationState,
    ) as $Val);
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LaunchLoadStateCopyWith<$Res> get launchLoadState {
    return $LaunchLoadStateCopyWith<$Res>(_value.launchLoadState, (value) {
      return _then(_value.copyWith(launchLoadState: value) as $Val);
    });
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppThemeStateCopyWith<$Res> get themeState {
    return $AppThemeStateCopyWith<$Res>(_value.themeState, (value) {
      return _then(_value.copyWith(themeState: value) as $Val);
    });
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppLocalizationStateCopyWith<$Res> get localizationState {
    return $AppLocalizationStateCopyWith<$Res>(_value.localizationState,
        (value) {
      return _then(_value.copyWith(localizationState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LaunchLoadState launchLoadState,
      AppThemeState themeState,
      AppLocalizationState localizationState});

  @override
  $LaunchLoadStateCopyWith<$Res> get launchLoadState;
  @override
  $AppThemeStateCopyWith<$Res> get themeState;
  @override
  $AppLocalizationStateCopyWith<$Res> get localizationState;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? launchLoadState = null,
    Object? themeState = null,
    Object? localizationState = null,
  }) {
    return _then(_$AppStateImpl(
      launchLoadState: null == launchLoadState
          ? _value.launchLoadState
          : launchLoadState // ignore: cast_nullable_to_non_nullable
              as LaunchLoadState,
      themeState: null == themeState
          ? _value.themeState
          : themeState // ignore: cast_nullable_to_non_nullable
              as AppThemeState,
      localizationState: null == localizationState
          ? _value.localizationState
          : localizationState // ignore: cast_nullable_to_non_nullable
              as AppLocalizationState,
    ));
  }
}

/// @nodoc

class _$AppStateImpl implements _AppState {
  const _$AppStateImpl(
      {required this.launchLoadState,
      required this.themeState,
      required this.localizationState});

  @override
  final LaunchLoadState launchLoadState;
  @override
  final AppThemeState themeState;
  @override
  final AppLocalizationState localizationState;

  @override
  String toString() {
    return 'AppState(launchLoadState: $launchLoadState, themeState: $themeState, localizationState: $localizationState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.launchLoadState, launchLoadState) ||
                other.launchLoadState == launchLoadState) &&
            (identical(other.themeState, themeState) ||
                other.themeState == themeState) &&
            (identical(other.localizationState, localizationState) ||
                other.localizationState == localizationState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, launchLoadState, themeState, localizationState);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required final LaunchLoadState launchLoadState,
      required final AppThemeState themeState,
      required final AppLocalizationState localizationState}) = _$AppStateImpl;

  @override
  LaunchLoadState get launchLoadState;
  @override
  AppThemeState get themeState;
  @override
  AppLocalizationState get localizationState;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LaunchLoadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() completed,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? completed,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? completed,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchLoadInitialState value) initial,
    required TResult Function(LaunchLoadCompletedState value) completed,
    required TResult Function(LaunchLoadFailedlState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaunchLoadInitialState value)? initial,
    TResult? Function(LaunchLoadCompletedState value)? completed,
    TResult? Function(LaunchLoadFailedlState value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchLoadInitialState value)? initial,
    TResult Function(LaunchLoadCompletedState value)? completed,
    TResult Function(LaunchLoadFailedlState value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchLoadStateCopyWith<$Res> {
  factory $LaunchLoadStateCopyWith(
          LaunchLoadState value, $Res Function(LaunchLoadState) then) =
      _$LaunchLoadStateCopyWithImpl<$Res, LaunchLoadState>;
}

/// @nodoc
class _$LaunchLoadStateCopyWithImpl<$Res, $Val extends LaunchLoadState>
    implements $LaunchLoadStateCopyWith<$Res> {
  _$LaunchLoadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LaunchLoadState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LaunchLoadInitialStateImplCopyWith<$Res> {
  factory _$$LaunchLoadInitialStateImplCopyWith(
          _$LaunchLoadInitialStateImpl value,
          $Res Function(_$LaunchLoadInitialStateImpl) then) =
      __$$LaunchLoadInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LaunchLoadInitialStateImplCopyWithImpl<$Res>
    extends _$LaunchLoadStateCopyWithImpl<$Res, _$LaunchLoadInitialStateImpl>
    implements _$$LaunchLoadInitialStateImplCopyWith<$Res> {
  __$$LaunchLoadInitialStateImplCopyWithImpl(
      _$LaunchLoadInitialStateImpl _value,
      $Res Function(_$LaunchLoadInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LaunchLoadState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LaunchLoadInitialStateImpl implements LaunchLoadInitialState {
  _$LaunchLoadInitialStateImpl();

  @override
  String toString() {
    return 'LaunchLoadState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchLoadInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() completed,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? completed,
    TResult? Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? completed,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchLoadInitialState value) initial,
    required TResult Function(LaunchLoadCompletedState value) completed,
    required TResult Function(LaunchLoadFailedlState value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaunchLoadInitialState value)? initial,
    TResult? Function(LaunchLoadCompletedState value)? completed,
    TResult? Function(LaunchLoadFailedlState value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchLoadInitialState value)? initial,
    TResult Function(LaunchLoadCompletedState value)? completed,
    TResult Function(LaunchLoadFailedlState value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LaunchLoadInitialState implements LaunchLoadState {
  factory LaunchLoadInitialState() = _$LaunchLoadInitialStateImpl;
}

/// @nodoc
abstract class _$$LaunchLoadCompletedStateImplCopyWith<$Res> {
  factory _$$LaunchLoadCompletedStateImplCopyWith(
          _$LaunchLoadCompletedStateImpl value,
          $Res Function(_$LaunchLoadCompletedStateImpl) then) =
      __$$LaunchLoadCompletedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LaunchLoadCompletedStateImplCopyWithImpl<$Res>
    extends _$LaunchLoadStateCopyWithImpl<$Res, _$LaunchLoadCompletedStateImpl>
    implements _$$LaunchLoadCompletedStateImplCopyWith<$Res> {
  __$$LaunchLoadCompletedStateImplCopyWithImpl(
      _$LaunchLoadCompletedStateImpl _value,
      $Res Function(_$LaunchLoadCompletedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LaunchLoadState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LaunchLoadCompletedStateImpl implements LaunchLoadCompletedState {
  _$LaunchLoadCompletedStateImpl();

  @override
  String toString() {
    return 'LaunchLoadState.completed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchLoadCompletedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() completed,
    required TResult Function() failed,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? completed,
    TResult? Function()? failed,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? completed,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchLoadInitialState value) initial,
    required TResult Function(LaunchLoadCompletedState value) completed,
    required TResult Function(LaunchLoadFailedlState value) failed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaunchLoadInitialState value)? initial,
    TResult? Function(LaunchLoadCompletedState value)? completed,
    TResult? Function(LaunchLoadFailedlState value)? failed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchLoadInitialState value)? initial,
    TResult Function(LaunchLoadCompletedState value)? completed,
    TResult Function(LaunchLoadFailedlState value)? failed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class LaunchLoadCompletedState implements LaunchLoadState {
  factory LaunchLoadCompletedState() = _$LaunchLoadCompletedStateImpl;
}

/// @nodoc
abstract class _$$LaunchLoadFailedlStateImplCopyWith<$Res> {
  factory _$$LaunchLoadFailedlStateImplCopyWith(
          _$LaunchLoadFailedlStateImpl value,
          $Res Function(_$LaunchLoadFailedlStateImpl) then) =
      __$$LaunchLoadFailedlStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LaunchLoadFailedlStateImplCopyWithImpl<$Res>
    extends _$LaunchLoadStateCopyWithImpl<$Res, _$LaunchLoadFailedlStateImpl>
    implements _$$LaunchLoadFailedlStateImplCopyWith<$Res> {
  __$$LaunchLoadFailedlStateImplCopyWithImpl(
      _$LaunchLoadFailedlStateImpl _value,
      $Res Function(_$LaunchLoadFailedlStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LaunchLoadState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LaunchLoadFailedlStateImpl implements LaunchLoadFailedlState {
  _$LaunchLoadFailedlStateImpl();

  @override
  String toString() {
    return 'LaunchLoadState.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchLoadFailedlStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() completed,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? completed,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? completed,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchLoadInitialState value) initial,
    required TResult Function(LaunchLoadCompletedState value) completed,
    required TResult Function(LaunchLoadFailedlState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaunchLoadInitialState value)? initial,
    TResult? Function(LaunchLoadCompletedState value)? completed,
    TResult? Function(LaunchLoadFailedlState value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchLoadInitialState value)? initial,
    TResult Function(LaunchLoadCompletedState value)? completed,
    TResult Function(LaunchLoadFailedlState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class LaunchLoadFailedlState implements LaunchLoadState {
  factory LaunchLoadFailedlState() = _$LaunchLoadFailedlStateImpl;
}

/// @nodoc
mixin _$AppThemeState {
  ETheme get theme => throw _privateConstructorUsedError;

  /// Create a copy of AppThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppThemeStateCopyWith<AppThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeStateCopyWith<$Res> {
  factory $AppThemeStateCopyWith(
          AppThemeState value, $Res Function(AppThemeState) then) =
      _$AppThemeStateCopyWithImpl<$Res, AppThemeState>;
  @useResult
  $Res call({ETheme theme});
}

/// @nodoc
class _$AppThemeStateCopyWithImpl<$Res, $Val extends AppThemeState>
    implements $AppThemeStateCopyWith<$Res> {
  _$AppThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ETheme,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppThemeStateImplCopyWith<$Res>
    implements $AppThemeStateCopyWith<$Res> {
  factory _$$AppThemeStateImplCopyWith(
          _$AppThemeStateImpl value, $Res Function(_$AppThemeStateImpl) then) =
      __$$AppThemeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ETheme theme});
}

/// @nodoc
class __$$AppThemeStateImplCopyWithImpl<$Res>
    extends _$AppThemeStateCopyWithImpl<$Res, _$AppThemeStateImpl>
    implements _$$AppThemeStateImplCopyWith<$Res> {
  __$$AppThemeStateImplCopyWithImpl(
      _$AppThemeStateImpl _value, $Res Function(_$AppThemeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$AppThemeStateImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ETheme,
    ));
  }
}

/// @nodoc

class _$AppThemeStateImpl implements _AppThemeState {
  const _$AppThemeStateImpl({this.theme = ETheme.light});

  @override
  @JsonKey()
  final ETheme theme;

  @override
  String toString() {
    return 'AppThemeState(theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppThemeStateImpl &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  /// Create a copy of AppThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppThemeStateImplCopyWith<_$AppThemeStateImpl> get copyWith =>
      __$$AppThemeStateImplCopyWithImpl<_$AppThemeStateImpl>(this, _$identity);
}

abstract class _AppThemeState implements AppThemeState {
  const factory _AppThemeState({final ETheme theme}) = _$AppThemeStateImpl;

  @override
  ETheme get theme;

  /// Create a copy of AppThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppThemeStateImplCopyWith<_$AppThemeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppLocalizationState {
  ELocalization get localization => throw _privateConstructorUsedError;

  /// Create a copy of AppLocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppLocalizationStateCopyWith<AppLocalizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLocalizationStateCopyWith<$Res> {
  factory $AppLocalizationStateCopyWith(AppLocalizationState value,
          $Res Function(AppLocalizationState) then) =
      _$AppLocalizationStateCopyWithImpl<$Res, AppLocalizationState>;
  @useResult
  $Res call({ELocalization localization});
}

/// @nodoc
class _$AppLocalizationStateCopyWithImpl<$Res,
        $Val extends AppLocalizationState>
    implements $AppLocalizationStateCopyWith<$Res> {
  _$AppLocalizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppLocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localization = null,
  }) {
    return _then(_value.copyWith(
      localization: null == localization
          ? _value.localization
          : localization // ignore: cast_nullable_to_non_nullable
              as ELocalization,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppLocalizationStateImplCopyWith<$Res>
    implements $AppLocalizationStateCopyWith<$Res> {
  factory _$$AppLocalizationStateImplCopyWith(_$AppLocalizationStateImpl value,
          $Res Function(_$AppLocalizationStateImpl) then) =
      __$$AppLocalizationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ELocalization localization});
}

/// @nodoc
class __$$AppLocalizationStateImplCopyWithImpl<$Res>
    extends _$AppLocalizationStateCopyWithImpl<$Res, _$AppLocalizationStateImpl>
    implements _$$AppLocalizationStateImplCopyWith<$Res> {
  __$$AppLocalizationStateImplCopyWithImpl(_$AppLocalizationStateImpl _value,
      $Res Function(_$AppLocalizationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localization = null,
  }) {
    return _then(_$AppLocalizationStateImpl(
      localization: null == localization
          ? _value.localization
          : localization // ignore: cast_nullable_to_non_nullable
              as ELocalization,
    ));
  }
}

/// @nodoc

class _$AppLocalizationStateImpl implements _AppLocalizationState {
  const _$AppLocalizationStateImpl({this.localization = ELocalization.en});

  @override
  @JsonKey()
  final ELocalization localization;

  @override
  String toString() {
    return 'AppLocalizationState(localization: $localization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLocalizationStateImpl &&
            (identical(other.localization, localization) ||
                other.localization == localization));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localization);

  /// Create a copy of AppLocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLocalizationStateImplCopyWith<_$AppLocalizationStateImpl>
      get copyWith =>
          __$$AppLocalizationStateImplCopyWithImpl<_$AppLocalizationStateImpl>(
              this, _$identity);
}

abstract class _AppLocalizationState implements AppLocalizationState {
  const factory _AppLocalizationState({final ELocalization localization}) =
      _$AppLocalizationStateImpl;

  @override
  ELocalization get localization;

  /// Create a copy of AppLocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppLocalizationStateImplCopyWith<_$AppLocalizationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
