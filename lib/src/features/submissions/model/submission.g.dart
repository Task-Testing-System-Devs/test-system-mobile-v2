// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Submission _$SubmissionFromJson(Map<String, dynamic> json) => Submission(
      id: json['id'] as int,
      code: json['code'] as String,
      language: ProgrammingLanguage.fromString(json['language'] as String),
      status: json['status'] as String,
      usedTime: (json['used_time'] as num).toDouble(),
      usedMemory: (json['used_memory'] as num).toDouble(),
      taskName: json['task_name'] as String?,
      contestName: json['contest_name'] as String?,
      errorTest: json['error_test'] as String?,
    );

Map<String, dynamic> _$SubmissionToJson(Submission instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'language': _$ProgrammingLanguageEnumMap[instance.language]!,
      'status': instance.status,
      'used_time': instance.usedTime,
      'used_memory': instance.usedMemory,
      'task_name': instance.taskName,
      'contest_name': instance.contestName,
      'error_test': instance.errorTest,
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

_$SubmissionImpl _$$SubmissionImplFromJson(Map<String, dynamic> json) =>
    _$SubmissionImpl(
      id: json['id'] as int,
      code: json['code'] as String,
      language: ProgrammingLanguage.fromString(json['language'] as String),
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
