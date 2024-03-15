// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Task {
  int get id => throw _privateConstructorUsedError;
  int get ejudgeId =>
      throw _privateConstructorUsedError; // required Complexity complexity,
// required List<ProgrammingLanguage> languages,
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime? get finishTime => throw _privateConstructorUsedError;
  List<Test>? get examples => throw _privateConstructorUsedError;
  double? get timeLimit => throw _privateConstructorUsedError;
  double? get memoryLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {int id,
      int ejudgeId,
      String title,
      String description,
      DateTime? finishTime,
      List<Test>? examples,
      double? timeLimit,
      double? memoryLimit});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ejudgeId = null,
    Object? title = null,
    Object? description = null,
    Object? finishTime = freezed,
    Object? examples = freezed,
    Object? timeLimit = freezed,
    Object? memoryLimit = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ejudgeId: null == ejudgeId
          ? _value.ejudgeId
          : ejudgeId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      finishTime: freezed == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      examples: freezed == examples
          ? _value.examples
          : examples // ignore: cast_nullable_to_non_nullable
              as List<Test>?,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      memoryLimit: freezed == memoryLimit
          ? _value.memoryLimit
          : memoryLimit // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int ejudgeId,
      String title,
      String description,
      DateTime? finishTime,
      List<Test>? examples,
      double? timeLimit,
      double? memoryLimit});
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ejudgeId = null,
    Object? title = null,
    Object? description = null,
    Object? finishTime = freezed,
    Object? examples = freezed,
    Object? timeLimit = freezed,
    Object? memoryLimit = freezed,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ejudgeId: null == ejudgeId
          ? _value.ejudgeId
          : ejudgeId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      finishTime: freezed == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      examples: freezed == examples
          ? _value._examples
          : examples // ignore: cast_nullable_to_non_nullable
              as List<Test>?,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      memoryLimit: freezed == memoryLimit
          ? _value.memoryLimit
          : memoryLimit // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl implements _Task {
  const _$TaskImpl(
      {required this.id,
      required this.ejudgeId,
      required this.title,
      required this.description,
      this.finishTime,
      final List<Test>? examples,
      this.timeLimit,
      this.memoryLimit})
      : _examples = examples;

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  final int id;
  @override
  final int ejudgeId;
// required Complexity complexity,
// required List<ProgrammingLanguage> languages,
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime? finishTime;
  final List<Test>? _examples;
  @override
  List<Test>? get examples {
    final value = _examples;
    if (value == null) return null;
    if (_examples is EqualUnmodifiableListView) return _examples;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? timeLimit;
  @override
  final double? memoryLimit;

  @override
  String toString() {
    return 'Task(id: $id, ejudgeId: $ejudgeId, title: $title, description: $description, finishTime: $finishTime, examples: $examples, timeLimit: $timeLimit, memoryLimit: $memoryLimit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ejudgeId, ejudgeId) ||
                other.ejudgeId == ejudgeId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.finishTime, finishTime) ||
                other.finishTime == finishTime) &&
            const DeepCollectionEquality().equals(other._examples, _examples) &&
            (identical(other.timeLimit, timeLimit) ||
                other.timeLimit == timeLimit) &&
            (identical(other.memoryLimit, memoryLimit) ||
                other.memoryLimit == memoryLimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      ejudgeId,
      title,
      description,
      finishTime,
      const DeepCollectionEquality().hash(_examples),
      timeLimit,
      memoryLimit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {required final int id,
      required final int ejudgeId,
      required final String title,
      required final String description,
      final DateTime? finishTime,
      final List<Test>? examples,
      final double? timeLimit,
      final double? memoryLimit}) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  int get id;
  @override
  int get ejudgeId;
  @override // required Complexity complexity,
// required List<ProgrammingLanguage> languages,
  String get title;
  @override
  String get description;
  @override
  DateTime? get finishTime;
  @override
  List<Test>? get examples;
  @override
  double? get timeLimit;
  @override
  double? get memoryLimit;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
