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

Contest _$ContestFromJson(Map<String, dynamic> json) {
  return _Contest.fromJson(json);
}

/// @nodoc
mixin _$Contest {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  Complexity get complexity => throw _privateConstructorUsedError;
  List<ProgrammingLanguage> get languages => throw _privateConstructorUsedError;

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
      {String id,
      String name,
      DateTime endDate,
      Complexity complexity,
      List<ProgrammingLanguage> languages});
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
    Object? name = null,
    Object? endDate = null,
    Object? complexity = null,
    Object? languages = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      {String id,
      String name,
      DateTime endDate,
      Complexity complexity,
      List<ProgrammingLanguage> languages});
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
    Object? name = null,
    Object? endDate = null,
    Object? complexity = null,
    Object? languages = null,
  }) {
    return _then(_$ContestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContestImpl implements _Contest {
  const _$ContestImpl(
      {required this.id,
      required this.name,
      required this.endDate,
      required this.complexity,
      required final List<ProgrammingLanguage> languages})
      : _languages = languages;

  factory _$ContestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContestImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
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
  String toString() {
    return 'Contest(id: $id, name: $name, endDate: $endDate, complexity: $complexity, languages: $languages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.complexity, complexity) ||
                other.complexity == complexity) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, endDate, complexity,
      const DeepCollectionEquality().hash(_languages));

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
      {required final String id,
      required final String name,
      required final DateTime endDate,
      required final Complexity complexity,
      required final List<ProgrammingLanguage> languages}) = _$ContestImpl;

  factory _Contest.fromJson(Map<String, dynamic> json) = _$ContestImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  DateTime get endDate;
  @override
  Complexity get complexity;
  @override
  List<ProgrammingLanguage> get languages;
  @override
  @JsonKey(ignore: true)
  _$$ContestImplCopyWith<_$ContestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
