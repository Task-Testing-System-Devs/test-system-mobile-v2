// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Submission {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(fromJson: ProgrammingLanguage.fromString)
  ProgrammingLanguage get language => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  double get usedTime => throw _privateConstructorUsedError;
  double get usedMemory => throw _privateConstructorUsedError;
  String? get taskName => throw _privateConstructorUsedError;
  String? get contestName => throw _privateConstructorUsedError;
  String? get errorTest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionCopyWith<Submission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionCopyWith<$Res> {
  factory $SubmissionCopyWith(
          Submission value, $Res Function(Submission) then) =
      _$SubmissionCopyWithImpl<$Res, Submission>;
  @useResult
  $Res call(
      {int id,
      String code,
      @JsonKey(fromJson: ProgrammingLanguage.fromString)
      ProgrammingLanguage language,
      String status,
      double usedTime,
      double usedMemory,
      String? taskName,
      String? contestName,
      String? errorTest});
}

/// @nodoc
class _$SubmissionCopyWithImpl<$Res, $Val extends Submission>
    implements $SubmissionCopyWith<$Res> {
  _$SubmissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? language = null,
    Object? status = null,
    Object? usedTime = null,
    Object? usedMemory = null,
    Object? taskName = freezed,
    Object? contestName = freezed,
    Object? errorTest = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as ProgrammingLanguage,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      usedTime: null == usedTime
          ? _value.usedTime
          : usedTime // ignore: cast_nullable_to_non_nullable
              as double,
      usedMemory: null == usedMemory
          ? _value.usedMemory
          : usedMemory // ignore: cast_nullable_to_non_nullable
              as double,
      taskName: freezed == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String?,
      contestName: freezed == contestName
          ? _value.contestName
          : contestName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorTest: freezed == errorTest
          ? _value.errorTest
          : errorTest // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmissionImplCopyWith<$Res>
    implements $SubmissionCopyWith<$Res> {
  factory _$$SubmissionImplCopyWith(
          _$SubmissionImpl value, $Res Function(_$SubmissionImpl) then) =
      __$$SubmissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String code,
      @JsonKey(fromJson: ProgrammingLanguage.fromString)
      ProgrammingLanguage language,
      String status,
      double usedTime,
      double usedMemory,
      String? taskName,
      String? contestName,
      String? errorTest});
}

/// @nodoc
class __$$SubmissionImplCopyWithImpl<$Res>
    extends _$SubmissionCopyWithImpl<$Res, _$SubmissionImpl>
    implements _$$SubmissionImplCopyWith<$Res> {
  __$$SubmissionImplCopyWithImpl(
      _$SubmissionImpl _value, $Res Function(_$SubmissionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? language = null,
    Object? status = null,
    Object? usedTime = null,
    Object? usedMemory = null,
    Object? taskName = freezed,
    Object? contestName = freezed,
    Object? errorTest = freezed,
  }) {
    return _then(_$SubmissionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as ProgrammingLanguage,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      usedTime: null == usedTime
          ? _value.usedTime
          : usedTime // ignore: cast_nullable_to_non_nullable
              as double,
      usedMemory: null == usedMemory
          ? _value.usedMemory
          : usedMemory // ignore: cast_nullable_to_non_nullable
              as double,
      taskName: freezed == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String?,
      contestName: freezed == contestName
          ? _value.contestName
          : contestName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorTest: freezed == errorTest
          ? _value.errorTest
          : errorTest // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionImpl implements _Submission {
  const _$SubmissionImpl(
      {required this.id,
      required this.code,
      @JsonKey(fromJson: ProgrammingLanguage.fromString) required this.language,
      required this.status,
      required this.usedTime,
      required this.usedMemory,
      this.taskName,
      this.contestName,
      this.errorTest});

  factory _$SubmissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmissionImplFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  @JsonKey(fromJson: ProgrammingLanguage.fromString)
  final ProgrammingLanguage language;
  @override
  final String status;
  @override
  final double usedTime;
  @override
  final double usedMemory;
  @override
  final String? taskName;
  @override
  final String? contestName;
  @override
  final String? errorTest;

  @override
  String toString() {
    return 'Submission(id: $id, code: $code, language: $language, status: $status, usedTime: $usedTime, usedMemory: $usedMemory, taskName: $taskName, contestName: $contestName, errorTest: $errorTest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.usedTime, usedTime) ||
                other.usedTime == usedTime) &&
            (identical(other.usedMemory, usedMemory) ||
                other.usedMemory == usedMemory) &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName) &&
            (identical(other.contestName, contestName) ||
                other.contestName == contestName) &&
            (identical(other.errorTest, errorTest) ||
                other.errorTest == errorTest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, language, status,
      usedTime, usedMemory, taskName, contestName, errorTest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionImplCopyWith<_$SubmissionImpl> get copyWith =>
      __$$SubmissionImplCopyWithImpl<_$SubmissionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionImplToJson(
      this,
    );
  }
}

abstract class _Submission implements Submission {
  const factory _Submission(
      {required final int id,
      required final String code,
      @JsonKey(fromJson: ProgrammingLanguage.fromString)
      required final ProgrammingLanguage language,
      required final String status,
      required final double usedTime,
      required final double usedMemory,
      final String? taskName,
      final String? contestName,
      final String? errorTest}) = _$SubmissionImpl;

  factory _Submission.fromJson(Map<String, dynamic> json) =
      _$SubmissionImpl.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  @JsonKey(fromJson: ProgrammingLanguage.fromString)
  ProgrammingLanguage get language;
  @override
  String get status;
  @override
  double get usedTime;
  @override
  double get usedMemory;
  @override
  String? get taskName;
  @override
  String? get contestName;
  @override
  String? get errorTest;
  @override
  @JsonKey(ignore: true)
  _$$SubmissionImplCopyWith<_$SubmissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
