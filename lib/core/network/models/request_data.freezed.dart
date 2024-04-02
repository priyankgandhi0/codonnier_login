// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestData _$RequestDataFromJson(Map<String, dynamic> json) {
  return _RequestData.fromJson(json);
}

/// @nodoc
mixin _$RequestData {
  List<Map<String, dynamic>> get fields => throw _privateConstructorUsedError;
  Map<String, dynamic> get queryParameter => throw _privateConstructorUsedError;
  Map<String, dynamic> get header => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestDataCopyWith<RequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDataCopyWith<$Res> {
  factory $RequestDataCopyWith(
          RequestData value, $Res Function(RequestData) then) =
      _$RequestDataCopyWithImpl<$Res, RequestData>;
  @useResult
  $Res call(
      {List<Map<String, dynamic>> fields,
      Map<String, dynamic> queryParameter,
      Map<String, dynamic> header});
}

/// @nodoc
class _$RequestDataCopyWithImpl<$Res, $Val extends RequestData>
    implements $RequestDataCopyWith<$Res> {
  _$RequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = null,
    Object? queryParameter = null,
    Object? header = null,
  }) {
    return _then(_value.copyWith(
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      queryParameter: null == queryParameter
          ? _value.queryParameter
          : queryParameter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestDataImplCopyWith<$Res>
    implements $RequestDataCopyWith<$Res> {
  factory _$$RequestDataImplCopyWith(
          _$RequestDataImpl value, $Res Function(_$RequestDataImpl) then) =
      __$$RequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Map<String, dynamic>> fields,
      Map<String, dynamic> queryParameter,
      Map<String, dynamic> header});
}

/// @nodoc
class __$$RequestDataImplCopyWithImpl<$Res>
    extends _$RequestDataCopyWithImpl<$Res, _$RequestDataImpl>
    implements _$$RequestDataImplCopyWith<$Res> {
  __$$RequestDataImplCopyWithImpl(
      _$RequestDataImpl _value, $Res Function(_$RequestDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = null,
    Object? queryParameter = null,
    Object? header = null,
  }) {
    return _then(_$RequestDataImpl(
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      queryParameter: null == queryParameter
          ? _value._queryParameter
          : queryParameter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      header: null == header
          ? _value._header
          : header // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestDataImpl implements _RequestData {
  const _$RequestDataImpl(
      {final List<Map<String, dynamic>> fields = const [],
      final Map<String, dynamic> queryParameter = const {},
      final Map<String, dynamic> header = const {}})
      : _fields = fields,
        _queryParameter = queryParameter,
        _header = header;

  factory _$RequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestDataImplFromJson(json);

  final List<Map<String, dynamic>> _fields;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  final Map<String, dynamic> _queryParameter;
  @override
  @JsonKey()
  Map<String, dynamic> get queryParameter {
    if (_queryParameter is EqualUnmodifiableMapView) return _queryParameter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_queryParameter);
  }

  final Map<String, dynamic> _header;
  @override
  @JsonKey()
  Map<String, dynamic> get header {
    if (_header is EqualUnmodifiableMapView) return _header;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_header);
  }

  @override
  String toString() {
    return 'RequestData(fields: $fields, queryParameter: $queryParameter, header: $header)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestDataImpl &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            const DeepCollectionEquality()
                .equals(other._queryParameter, _queryParameter) &&
            const DeepCollectionEquality().equals(other._header, _header));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_fields),
      const DeepCollectionEquality().hash(_queryParameter),
      const DeepCollectionEquality().hash(_header));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestDataImplCopyWith<_$RequestDataImpl> get copyWith =>
      __$$RequestDataImplCopyWithImpl<_$RequestDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestDataImplToJson(
      this,
    );
  }
}

abstract class _RequestData implements RequestData {
  const factory _RequestData(
      {final List<Map<String, dynamic>> fields,
      final Map<String, dynamic> queryParameter,
      final Map<String, dynamic> header}) = _$RequestDataImpl;

  factory _RequestData.fromJson(Map<String, dynamic> json) =
      _$RequestDataImpl.fromJson;

  @override
  List<Map<String, dynamic>> get fields;
  @override
  Map<String, dynamic> get queryParameter;
  @override
  Map<String, dynamic> get header;
  @override
  @JsonKey(ignore: true)
  _$$RequestDataImplCopyWith<_$RequestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
