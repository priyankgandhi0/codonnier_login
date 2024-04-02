import 'package:codonnier_login/core/network/models/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'result_model.freezed.dart';

/// ResultModel is a class that is used to return the result of a function. It
/// can be either a success or an error. If it is a success, it will return the
/// data. If it is an error, it will return the error message.
@freezed
@factoryMethod
sealed class ResultModel<T> with _$ResultModel<T> {
  const ResultModel._();

  /// Success case for the ResultModel and it will return the data.
  factory ResultModel.success(T data) = _Success<T>;

  /// Error case for the ResultModel and it will return the error message.
  factory ResultModel.error(ErrorModel message) = _Error<T>;
}