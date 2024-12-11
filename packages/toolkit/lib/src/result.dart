import 'package:flutter/material.dart';

typedef SuccessCallback<W, S> = W Function(S success);
typedef ErrorCallback<W, E> = W Function(E error);

typedef ResultOf<S, E> = Result<S, E>;

sealed class Result<S, E> {
  const Result();

  const factory Result.success(S s) = Success;

  const factory Result.error(E e) = Error;

  S? tryGetSuccess();

  E? tryGetError();

  bool isError();

  bool isSuccess();

  W when<W>(
    SuccessCallback<W, S> whenSuccess,
    ErrorCallback<W, E> whenError,
  );

  R? whenSuccess<R>(
    R Function(S success) whenSuccess,
  );

  R? whenError<R>(
    R Function(E error) whenError,
  );
}

@immutable
final class Success<S, E> extends Result<S, E> {
  const Success(
    this._success,
  );

  final S _success;

  @override
  bool isError() => false;

  @override
  bool isSuccess() => true;

  @override
  int get hashCode => _success.hashCode;

  @override
  bool operator ==(Object other) {
    return other is Success && other._success == _success;
  }

  @override
  W when<W>(
    SuccessCallback<W, S> whenSuccess,
    ErrorCallback<W, E> whenError,
  ) =>
      whenSuccess(_success);

  S get success => _success;

  @override
  E? tryGetError() => null;

  @override
  S tryGetSuccess() => _success;

  @override
  R? whenError<R>(R Function(E error) whenError) => null;

  @override
  R whenSuccess<R>(R Function(S success) whenSuccess) {
    return whenSuccess(_success);
  }
}

@immutable
final class Error<S, E> extends Result<S, E> {
  const Error(this._error);

  final E _error;

  E get error => _error;

  @override
  bool isError() => true;

  @override
  bool isSuccess() => false;

  @override
  int get hashCode => _error.hashCode;

  @override
  bool operator ==(Object other) => other is Error && other._error == _error;

  @override
  W when<W>(
    SuccessCallback<W, S> whenSuccess,
    ErrorCallback<W, E> whenError,
  ) =>
      whenError(_error);

  @override
  E tryGetError() => _error;

  @override
  S? tryGetSuccess() => null;

  @override
  R whenError<R>(R Function(E error) whenError) => whenError(_error);

  @override
  R? whenSuccess<R>(R Function(S success) whenSuccess) => null;
}
