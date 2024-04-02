import 'dart:developer';

import 'package:codonnier_login/exporter.dart';

/// Extension for String class. It contains the method to check if the string is
/// a valid email.

extension StringExtension on String {
  /// Check if the string is a valid email. It returns true if the string is a
  /// valid email. Otherwise, it returns false.
  bool get isValidEmail =>
      RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this);
}

extension FutureResponseException on Future<dynamic> {
  /// [guard] is a method that is used to handle the response from the server.
  /// It takes a [parse] function as a parameter and returns a [ResultModel] object.
  /// If the response is successful, it returns a [ResultModel] object with the
  /// data. If the response is an error, it returns a [ResultModel] object with
  /// the error.
  Future<ResultModel> guard<T>(Function(dynamic) parse) async {
    try {
      final response = await this;

      return ResultModel.success(parse(response.data));
    } on Failure catch (e, stacktrace) {
      log(
        runtimeType.toString(),
        error: {},
        stackTrace: stacktrace,
      );
      ErrorModel errorModel = ErrorModel.fromJson(e.error);

      return ResultModel.error(errorModel);
    }
  }
}
