// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');


/// @nodoc
mixin _$Contest {
  int get id => throw _privateConstructorUsedError;
  int get ejudgeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(toJson: _dateTimeToJson, fromJson: DateTime.parse)
  DateTime get finishTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'difficulty', fromJson: Complexity.fromNumber)
  Complexity get complexity => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  List<ProgrammingLanguage>? get languages =>
      throw _privateConstructorUsedError;
  List<Task>? get tasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContestCopyWith<Contest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContestCopyWith<$Res> {
  factory $ContestCopyWith(Contest value, $Res Function(Contest) then) =
      _$ContestCopyWithImpl<$Res, Contest>;
  @useResult
  $Res call(
      {int id,
      int ejudgeId,
      @JsonKey(name: 'title') String name,
      @JsonKey(toJson: _dateTimeToJson, fromJson: DateTime.parse)
      DateTime finishTime,
      @JsonKey(name: 'difficulty', fromJson: Complexity.fromNumber)
      Complexity complexity,
      DateTime? startTime,
      List<ProgrammingLanguage>? languages,
      List<Task>? tasks});
}

/// @nodoc
class _$ContestCopyWithImpl<$Res, $Val extends Contest>
    implements $ContestCopyWith<$Res> {
  _$ContestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ejudgeId = null,
    Object? name = null,
    Object? finishTime = null,
    Object? complexity = null,
    Object? startTime = freezed,
    Object? languages = freezed,
    Object? tasks = freezed,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      complexity: null == complexity
          ? _value.complexity
          : complexity // ignore: cast_nullable_to_non_nullable
              as Complexity,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<ProgrammingLanguage>?,
      tasks: freezed == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContestImplCopyWith<$Res> implements $ContestCopyWith<$Res> {
  factory _$$ContestImplCopyWith(
          _$ContestImpl value, $Res Function(_$ContestImpl) then) =
      __$$ContestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int ejudgeId,
      @JsonKey(name: 'title') String name,
      @JsonKey(toJson: _dateTimeToJson, fromJson: DateTime.parse)
      DateTime finishTime,
      @JsonKey(name: 'difficulty', fromJson: Complexity.fromNumber)
      Complexity complexity,
      DateTime? startTime,
      List<ProgrammingLanguage>? languages,
      List<Task>? tasks});
}

/// @nodoc
class __$$ContestImplCopyWithImpl<$Res>
    extends _$ContestCopyWithImpl<$Res, _$ContestImpl>
    implements _$$ContestImplCopyWith<$Res> {
  __$$ContestImplCopyWithImpl(
      _$ContestImpl _value, $Res Function(_$ContestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ejudgeId = null,
    Object? name = null,
    Object? finishTime = null,
    Object? complexity = null,
    Object? startTime = freezed,
    Object? languages = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_$ContestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ejudgeId: null == ejudgeId
          ? _value.ejudgeId
          : ejudgeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      complexity: null == complexity
          ? _value.complexity
          : complexity // ignore: cast_nullable_to_non_nullable
              as Complexity,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<ProgrammingLanguage>?,
      tasks: freezed == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContestImpl implements _Contest {
  const _$ContestImpl(
      {required this.id,
      required this.ejudgeId,
      @JsonKey(name: 'title') required this.name,
      @JsonKey(toJson: _dateTimeToJson, fromJson: DateTime.parse)
      required this.finishTime,
      @JsonKey(name: 'difficulty', fromJson: Complexity.fromNumber)
      required this.complexity,
      this.startTime,
      final List<ProgrammingLanguage>? languages,
      final List<Task>? tasks})
      : _languages = languages,
        _tasks = tasks;

  factory _$ContestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContestImplFromJson(json);

  @override
  final int id;
  @override
  final int ejudgeId;
  @override
  @JsonKey(name: 'title')
  final String name;
  @override
  @JsonKey(toJson: _dateTimeToJson, fromJson: DateTime.parse)
  final DateTime finishTime;
  @override
  @JsonKey(name: 'difficulty', fromJson: Complexity.fromNumber)
  final Complexity complexity;
  @override
  final DateTime? startTime;
  final List<ProgrammingLanguage>? _languages;
  @override
  List<ProgrammingLanguage>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Task>? _tasks;
  @override
  List<Task>? get tasks {
    final value = _tasks;
    if (value == null) return null;
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Contest(id: $id, ejudgeId: $ejudgeId, name: $name, finishTime: $finishTime, complexity: $complexity, startTime: $startTime, languages: $languages, tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ejudgeId, ejudgeId) ||
                other.ejudgeId == ejudgeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.finishTime, finishTime) ||
                other.finishTime == finishTime) &&
            (identical(other.complexity, complexity) ||
                other.complexity == complexity) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      ejudgeId,
      name,
      finishTime,
      complexity,
      startTime,
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContestImplCopyWith<_$ContestImpl> get copyWith =>
      __$$ContestImplCopyWithImpl<_$ContestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContestImplToJson(
      this,
    );
  }
}

abstract class _Contest implements Contest {
  const factory _Contest(
      {required final int id,
      required final int ejudgeId,
      @JsonKey(name: 'title') required final String name,
      @JsonKey(toJson: _dateTimeToJson, fromJson: DateTime.parse)
      required final DateTime finishTime,
      @JsonKey(name: 'difficulty', fromJson: Complexity.fromNumber)
      required final Complexity complexity,
      final DateTime? startTime,
      final List<ProgrammingLanguage>? languages,
      final List<Task>? tasks}) = _$ContestImpl;

  factory _Contest.fromJson(Map<String, dynamic> json) = _$ContestImpl.fromJson;

  @override
  int get id;
  @override
  int get ejudgeId;
  @override
  @JsonKey(name: 'title')
  String get name;
  @override
  @JsonKey(toJson: _dateTimeToJson, fromJson: DateTime.parse)
  DateTime get finishTime;
  @override
  @JsonKey(name: 'difficulty', fromJson: Complexity.fromNumber)
  Complexity get complexity;
  @override
  DateTime? get startTime;
  @override
  List<ProgrammingLanguage>? get languages;
  @override
  List<Task>? get tasks;
  @override
  @JsonKey(ignore: true)
  _$$ContestImplCopyWith<_$ContestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
