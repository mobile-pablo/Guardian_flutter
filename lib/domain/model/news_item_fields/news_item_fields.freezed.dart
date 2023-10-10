// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_item_fields.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsItemFields _$NewsItemFieldsFromJson(Map<String, dynamic> json) {
  return _NewsItemFields.fromJson(json);
}

/// @nodoc
mixin _$NewsItemFields {
  String get thumbnail => throw _privateConstructorUsedError;
  set thumbnail(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsItemFieldsCopyWith<NewsItemFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsItemFieldsCopyWith<$Res> {
  factory $NewsItemFieldsCopyWith(
          NewsItemFields value, $Res Function(NewsItemFields) then) =
      _$NewsItemFieldsCopyWithImpl<$Res, NewsItemFields>;
  @useResult
  $Res call({String thumbnail});
}

/// @nodoc
class _$NewsItemFieldsCopyWithImpl<$Res, $Val extends NewsItemFields>
    implements $NewsItemFieldsCopyWith<$Res> {
  _$NewsItemFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsItemFieldsImplCopyWith<$Res>
    implements $NewsItemFieldsCopyWith<$Res> {
  factory _$$NewsItemFieldsImplCopyWith(_$NewsItemFieldsImpl value,
          $Res Function(_$NewsItemFieldsImpl) then) =
      __$$NewsItemFieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String thumbnail});
}

/// @nodoc
class __$$NewsItemFieldsImplCopyWithImpl<$Res>
    extends _$NewsItemFieldsCopyWithImpl<$Res, _$NewsItemFieldsImpl>
    implements _$$NewsItemFieldsImplCopyWith<$Res> {
  __$$NewsItemFieldsImplCopyWithImpl(
      _$NewsItemFieldsImpl _value, $Res Function(_$NewsItemFieldsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnail = null,
  }) {
    return _then(_$NewsItemFieldsImpl(
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsItemFieldsImpl
    with DiagnosticableTreeMixin
    implements _NewsItemFields {
  const _$NewsItemFieldsImpl({required this.thumbnail});

  factory _$NewsItemFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsItemFieldsImplFromJson(json);

  @override
  final String thumbnail;

  

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsItemFields(thumbnail: $thumbnail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsItemFields'))
      ..add(DiagnosticsProperty('thumbnail', thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsItemFieldsImplCopyWith<_$NewsItemFieldsImpl> get copyWith =>
      __$$NewsItemFieldsImplCopyWithImpl<_$NewsItemFieldsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsItemFieldsImplToJson(
      this,
    );
  }
  
  @override
  set thumbnail(String value) => thumbnail = value;
}

abstract class _NewsItemFields implements NewsItemFields {
  const factory _NewsItemFields({required String thumbnail}) =
      _$NewsItemFieldsImpl;

  factory _NewsItemFields.fromJson(Map<String, dynamic> json) =
      _$NewsItemFieldsImpl.fromJson;

  @override
  String get thumbnail;
  set thumbnail(String value);
  @override
  @JsonKey(ignore: true)
  _$$NewsItemFieldsImplCopyWith<_$NewsItemFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
