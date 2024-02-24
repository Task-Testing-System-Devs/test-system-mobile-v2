// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubmissionImpl _$$SubmissionImplFromJson(Map<String, dynamic> json) =>
    _$SubmissionImpl(
      id: json['id'] as String,
      code: json['code'] as String,
      language: $enumDecode(_$ProgrammingLanguageEnumMap, json['language']),
      status: json['status'] as String,
      usedTime: (json['usedTime'] as num).toDouble(),
      usedMemory: (json['usedMemory'] as num).toDouble(),
      taskName: json['taskName'] as String?,
      contestName: json['contestName'] as String?,
      errorTest: json['errorTest'] as String?,
    );

Map<String, dynamic> _$$SubmissionImplToJson(_$SubmissionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'language': _$ProgrammingLanguageEnumMap[instance.language]!,
      'status': instance.status,
      'usedTime': instance.usedTime,
      'usedMemory': instance.usedMemory,
      'taskName': instance.taskName,
      'contestName': instance.contestName,
      'errorTest': instance.errorTest,
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
