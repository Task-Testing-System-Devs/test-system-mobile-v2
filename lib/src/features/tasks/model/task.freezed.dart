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

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  String get id => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  Complexity get complexity => throw _privateConstructorUsedError;
  List<ProgrammingLanguage> get languages => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Test>? get examples => throw _privateConstructorUsedError;
  double? get maxTime => throw _privateConstructorUsedError;
  double? get maxMemory => throw _privateConstructorUsedError;

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
      {String id,
      DateTime endDate,
      Complexity complexity,
      List<ProgrammingLanguage> languages,
      String title,
      String description,
      List<Test>? examples,
      double? maxTime,
      double? maxMemory});
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
    Object? endDate = null,
    Object? complexity = null,
    Object? languages = null,
    Object? title = null,
    Object? description = null,
    Object? examples = freezed,
    Object? maxTime = freezed,
    Object? maxMemory = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      complexity: null == complexity
          ? _value.complexity
          : complexity // ignore: cast_nullable_to_non_nullable
              as Complexity,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<ProgrammingLanguage>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      examples: freezed == examples
          ? _value.examples
          : examples // ignore: cast_nullable_to_non_nullable
              as List<Test>?,
      maxTime: freezed == maxTime
          ? _value.maxTime
          : maxTime // ignore: cast_nullable_to_non_nullable
              as double?,
      maxMemory: freezed == maxMemory
          ? _value.maxMemory
          : maxMemory // ignore: cast_nullable_to_non_nullable
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
      {String id,
      DateTime endDate,
      Complexity complexity,
      List<ProgrammingLanguage> languages,
      String title,
      String description,
      List<Test>? examples,
      double? maxTime,
      double? maxMemory});
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
    Object? endDate = null,
    Object? complexity = null,
    Object? languages = null,
    Object? title = null,
    Object? description = null,
    Object? examples = freezed,
    Object? maxTime = freezed,
    Object? maxMemory = freezed,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      complexity: null == complexity
          ? _value.complexity
          : complexity // ignore: cast_nullable_to_non_nullable
              as Complexity,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<ProgrammingLanguage>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      examples: freezed == examples
          ? _value._examples
          : examples // ignore: cast_nullable_to_non_nullable
              as List<Test>?,
      maxTime: freezed == maxTime
          ? _value.maxTime
          : maxTime // ignore: cast_nullable_to_non_nullable
              as double?,
      maxMemory: freezed == maxMemory
          ? _value.maxMemory
          : maxMemory // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl implements _Task {
  const _$TaskImpl(
      {required this.id,
      required this.endDate,
      required this.complexity,
      required final List<ProgrammingLanguage> languages,
      required this.title,
      required this.description,
      final List<Test>? examples,
      this.maxTime,
      this.maxMemory})
      : _languages = languages,
        _examples = examples;

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime endDate;
  @override
  final Complexity complexity;
  final List<ProgrammingLanguage> _languages;
  @override
  List<ProgrammingLanguage> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  @override
  final String title;
  @override
  final String description;
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
  final double? maxTime;
  @override
  final double? maxMemory;

  @override
  String toString() {
    return 'Task(id: $id, endDate: $endDate, complexity: $complexity, languages: $languages, title: $title, description: $description, examples: $examples, maxTime: $maxTime, maxMemory: $maxMemory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.complexity, complexity) ||
                other.complexity == complexity) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._examples, _examples) &&
            (identical(other.maxTime, maxTime) || other.maxTime == maxTime) &&
            (identical(other.maxMemory, maxMemory) ||
                other.maxMemory == maxMemory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      endDate,
      complexity,
      const DeepCollectionEquality().hash(_languages),
      title,
      description,
      const DeepCollectionEquality().hash(_examples),
      maxTime,
      maxMemory);

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
      {required final String id,
      required final DateTime endDate,
      required final Complexity complexity,
      required final List<ProgrammingLanguage> languages,
      required final String title,
      required final String description,
      final List<Test>? examples,
      final double? maxTime,
      final double? maxMemory}) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get endDate;
  @override
  Complexity get complexity;
  @override
  List<ProgrammingLanguage> get languages;
  @override
  String get title;
  @override
  String get description;
  @override
  List<Test>? get examples;
  @override
  double? get maxTime;
  @override
  double? get maxMemory;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
