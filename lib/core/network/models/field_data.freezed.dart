// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FieldData _$FieldDataFromJson(Map<String, dynamic> json) {
  return _FieldData.fromJson(json);
}

/// @nodoc
mixin _$FieldData {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldDataCopyWith<FieldData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldDataCopyWith<$Res> {
  factory $FieldDataCopyWith(FieldData value, $Res Function(FieldData) then) =
      _$FieldDataCopyWithImpl<$Res, FieldData>;
  @useResult
  $Res call({String key, String value, String label});
}

/// @nodoc
class _$FieldDataCopyWithImpl<$Res, $Val extends FieldData>
    implements $FieldDataCopyWith<$Res> {
  _$FieldDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldDataImplCopyWith<$Res>
    implements $FieldDataCopyWith<$Res> {
  factory _$$FieldDataImplCopyWith(
          _$FieldDataImpl value, $Res Function(_$FieldDataImpl) then) =
      __$$FieldDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value, String label});
}

/// @nodoc
class __$$FieldDataImplCopyWithImpl<$Res>
    extends _$FieldDataCopyWithImpl<$Res, _$FieldDataImpl>
    implements _$$FieldDataImplCopyWith<$Res> {
  __$$FieldDataImplCopyWithImpl(
      _$FieldDataImpl _value, $Res Function(_$FieldDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? label = null,
  }) {
    return _then(_$FieldDataImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldDataImpl implements _FieldData {
  const _$FieldDataImpl({this.key = '', this.value = '', this.label = ''});

  factory _$FieldDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldDataImplFromJson(json);

  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final String label;

  @override
  String toString() {
    return 'FieldData(key: $key, value: $value, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldDataImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldDataImplCopyWith<_$FieldDataImpl> get copyWith =>
      __$$FieldDataImplCopyWithImpl<_$FieldDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldDataImplToJson(
      this,
    );
  }
}

abstract class _FieldData implements FieldData {
  const factory _FieldData(
      {final String key,
      final String value,
      final String label}) = _$FieldDataImpl;

  factory _FieldData.fromJson(Map<String, dynamic> json) =
      _$FieldDataImpl.fromJson;

  @override
  String get key;
  @override
  String get value;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$FieldDataImplCopyWith<_$FieldDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
