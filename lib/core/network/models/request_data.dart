import 'package:freezed_annotation/freezed_annotation.dart';


part 'request_data.freezed.dart';
part 'request_data.g.dart';

/// Request data model to be used in the API request. It contains the fields,
/// query parameters, and headers to be sent with the request.

@freezed
class RequestData with _$RequestData {

  /// Creates a request data model with fields, query parameters, and headers.
  /// [fields] is a list of maps with keys 'key', 'label', and 'value'.
  /// [key] is used to identify the field whether it is email or password and
  /// later it is used to send the data to the server.
  /// [label] is the text to be displayed on the text field.
  /// [value] is the value of the text field.
  ///
  /// [queryParameter] is the query parameters to be sent with the request.
  /// [header] is the headers to be sent with the request.

  const factory RequestData({
    @Default([]) List<Map<String, dynamic>> fields,
    @Default({}) Map<String, dynamic> queryParameter,
    @Default({}) Map<String, dynamic> header,
  }) = _RequestData;

  factory RequestData.fromJson(Map<String, Object?> json) =>
      _$RequestDataFromJson(json);
}
