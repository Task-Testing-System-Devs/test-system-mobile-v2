// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RatingUserInfo _$RatingUserInfoFromJson(Map<String, dynamic> json) {
  return _RatingUserInfo.fromJson(json);
}

/// @nodoc
mixin _$RatingUserInfo {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get middleName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingUserInfoCopyWith<RatingUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingUserInfoCopyWith<$Res> {
  factory $RatingUserInfoCopyWith(
          RatingUserInfo value, $Res Function(RatingUserInfo) then) =
      _$RatingUserInfoCopyWithImpl<$Res, RatingUserInfo>;
  @useResult
  $Res call({String firstName, String lastName, String middleName});
}

/// @nodoc
class _$RatingUserInfoCopyWithImpl<$Res, $Val extends RatingUserInfo>
    implements $RatingUserInfoCopyWith<$Res> {
  _$RatingUserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? middleName = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: null == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingUserInfoImplCopyWith<$Res>
    implements $RatingUserInfoCopyWith<$Res> {
  factory _$$RatingUserInfoImplCopyWith(_$RatingUserInfoImpl value,
          $Res Function(_$RatingUserInfoImpl) then) =
      __$$RatingUserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName, String middleName});
}

/// @nodoc
class __$$RatingUserInfoImplCopyWithImpl<$Res>
    extends _$RatingUserInfoCopyWithImpl<$Res, _$RatingUserInfoImpl>
    implements _$$RatingUserInfoImplCopyWith<$Res> {
  __$$RatingUserInfoImplCopyWithImpl(
      _$RatingUserInfoImpl _value, $Res Function(_$RatingUserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? middleName = null,
  }) {
    return _then(_$RatingUserInfoImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: null == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingUserInfoImpl extends _RatingUserInfo {
  const _$RatingUserInfoImpl(
      {required this.firstName,
      required this.lastName,
      required this.middleName})
      : super._();

  factory _$RatingUserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingUserInfoImplFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String middleName;

  @override
  String toString() {
    return 'RatingUserInfo(firstName: $firstName, lastName: $lastName, middleName: $middleName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingUserInfoImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, middleName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingUserInfoImplCopyWith<_$RatingUserInfoImpl> get copyWith =>
      __$$RatingUserInfoImplCopyWithImpl<_$RatingUserInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingUserInfoImplToJson(
      this,
    );
  }
}

abstract class _RatingUserInfo extends RatingUserInfo {
  const factory _RatingUserInfo(
      {required final String firstName,
      required final String lastName,
      required final String middleName}) = _$RatingUserInfoImpl;
  const _RatingUserInfo._() : super._();

  factory _RatingUserInfo.fromJson(Map<String, dynamic> json) =
      _$RatingUserInfoImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get middleName;
  @override
  @JsonKey(ignore: true)
  _$$RatingUserInfoImplCopyWith<_$RatingUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
