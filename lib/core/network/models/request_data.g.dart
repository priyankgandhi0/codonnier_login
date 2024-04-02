// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestDataImpl _$$RequestDataImplFromJson(Map<String, dynamic> json) =>
    _$RequestDataImpl(
      fields: (json['fields'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      queryParameter:
          json['queryParameter'] as Map<String, dynamic>? ?? const {},
      header: json['header'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$RequestDataImplToJson(_$RequestDataImpl instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'queryParameter': instance.queryParameter,
      'header': instance.header,
    };
