// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContestImpl _$$ContestImplFromJson(Map<String, dynamic> json) =>
    _$ContestImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      endDate: DateTime.parse(json['endDate'] as String),
      complexity: $enumDecode(_$ComplexityEnumMap, json['complexity']),
      languages: (json['languages'] as List<dynamic>)
          .map((e) => $enumDecode(_$ProgrammingLanguageEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$ContestImplToJson(_$ContestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'endDate': instance.endDate.toIso8601String(),
      'complexity': _$ComplexityEnumMap[instance.complexity]!,
      'languages': instance.languages
          .map((e) => _$ProgrammingLanguageEnumMap[e]!)
          .toList(),
    };

const _$ComplexityEnumMap = {
  Complexity.veryEasy: 'veryEasy',
  Complexity.easy: 'easy',
  Complexity.medium: 'medium',
  Complexity.hard: 'hard',
  Complexity.veryHard: 'veryHard',
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
