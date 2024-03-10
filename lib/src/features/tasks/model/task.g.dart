// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as String,
      endDate: DateTime.parse(json['endDate'] as String),
      complexity: $enumDecode(_$ComplexityEnumMap, json['complexity']),
      languages: (json['languages'] as List<dynamic>)
          .map((e) => $enumDecode(_$ProgrammingLanguageEnumMap, e))
          .toList(),
      title: json['title'] as String,
      description: json['description'] as String,
      examples: (json['examples'] as List<dynamic>?)
          ?.map((e) => Test.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxTime: (json['maxTime'] as num?)?.toDouble(),
      maxMemory: (json['maxMemory'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'endDate': instance.endDate.toIso8601String(),
      'complexity': _$ComplexityEnumMap[instance.complexity]!,
      'languages': instance.languages
          .map((e) => _$ProgrammingLanguageEnumMap[e]!)
          .toList(),
      'title': instance.title,
      'description': instance.description,
      'examples': instance.examples,
      'maxTime': instance.maxTime,
      'maxMemory': instance.maxMemory,
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
