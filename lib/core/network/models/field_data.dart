import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_data.freezed.dart';
part 'field_data.g.dart';

/// A model to store the field data with key, value, and label.

@freezed
class FieldData with _$FieldData {

  /// Creates a field data model with key, value, and label.
  /// [key] is used to identify the field whether it is email or password and
  /// later it is used to send the data to the server.
  /// [label] is the text to be displayed on the text field.
  /// [value] is the value of the text field.

  const factory FieldData({
    @Default('') String key,
    @Default('') String value,
    @Default('') String label,
  }) = _FieldData;

  factory FieldData.fromJson(Map<String, dynamic> json) =>
      _$FieldDataFromJson(json);
}
