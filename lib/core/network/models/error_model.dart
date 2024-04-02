import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.freezed.dart';
part 'error_model.g.dart';

@freezed
class ErrorModel with _$ErrorModel {
  const factory ErrorModel({
    @JsonKey(name: 'message') @Default('') String message,
    @JsonKey(name: 'code') @Default(500) int code,
    @JsonKey(name: 'stake') String? stake,
  }) = _ErrorModel;

  factory ErrorModel.fromJson(Map<String, Object?> json) =>
      _$ErrorModelFromJson(json);
}
