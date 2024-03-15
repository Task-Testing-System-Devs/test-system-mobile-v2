// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contest _$ContestFromJson(Map<String, dynamic> json) => Contest(
      id: json['id'] as int,
      ejudgeId: json['ejudge_id'] as int,
      name: json['title'] as String,
      finishTime: DateTime.parse(json['finish_time'] as String),
      complexity: Complexity.fromNumber(json['difficulty'] as int),
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ProgrammingLanguageEnumMap, e))
          .toList(),
      tasks: (json['tasks'] as List<dynamic>?)
          ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContestToJson(Contest instance) => <String, dynamic>{
      'id': instance.id,
      'ejudge_id': instance.ejudgeId,
      'title': instance.name,
      'finish_time': _dateTimeToJson(instance.finishTime),
      'difficulty': _$ComplexityEnumMap[instance.complexity]!,
      'start_time': instance.startTime?.toIso8601String(),
      'languages': instance.languages
          ?.map((e) => _$ProgrammingLanguageEnumMap[e]!)
          .toList(),
      'tasks': instance.tasks,
    };

const _$ProgrammingLanguageEnumMap = {
  ProgrammingLanguage.c: 'c',
  ProgrammingLanguage.cPlusPlus: 'cPlusPlus',
  ProgrammingLanguage.cSharp: 'cSharp',
  ProgrammingLanguage.dart: 'dart',
  ProgrammingLanguage.java: 'java',
  ProgrammingLanguage.kotlin: 'kotlin',
  ProgrammingLanguage.python: 'python',
  ProgrammingLanguage.ruby: 'ruby',
  ProgrammingLanguage.swift: 'swift',
};

const _$ComplexityEnumMap = {
  Complexity.veryEasy: 'veryEasy',
  Complexity.easy: 'easy',
  Complexity.medium: 'medium',
  Complexity.hard: 'hard',
  Complexity.veryHard: 'veryHard',
};

_$ContestImpl _$$ContestImplFromJson(Map<String, dynamic> json) =>
    _$ContestImpl(
      id: json['id'] as int,
      ejudgeId: json['ejudgeId'] as int,
      name: json['title'] as String,
      finishTime: DateTime.parse(json['finishTime'] as String),
      complexity: Complexity.fromNumber(json['difficulty'] as int),
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ProgrammingLanguageEnumMap, e))
          .toList(),
      tasks: (json['tasks'] as List<dynamic>?)
          ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContestImplToJson(_$ContestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ejudgeId': instance.ejudgeId,
      'title': instance.name,
      'finishTime': _dateTimeToJson(instance.finishTime),
      'difficulty': _$ComplexityEnumMap[instance.complexity]!,
      'startTime': instance.startTime?.toIso8601String(),
      'languages': instance.languages
          ?.map((e) => _$ProgrammingLanguageEnumMap[e]!)
          .toList(),
      'tasks': instance.tasks,
    };
