// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      id: json['id'] as int,
      ejudgeId: json['ejudge_id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      finishTime: json['finish_time'] == null
          ? null
          : DateTime.parse(json['finish_time'] as String),
      examples: (json['examples'] as List<dynamic>?)
          ?.map((e) => Test.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeLimit: (json['time_limit'] as num?)?.toDouble(),
      memoryLimit: (json['memory_limit'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'ejudge_id': instance.ejudgeId,
      'title': instance.title,
      'description': instance.description,
      'finish_time': instance.finishTime?.toIso8601String(),
      'examples': instance.examples,
      'time_limit': instance.timeLimit,
      'memory_limit': instance.memoryLimit,
    };

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as int,
      ejudgeId: json['ejudgeId'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      finishTime: json['finishTime'] == null
          ? null
          : DateTime.parse(json['finishTime'] as String),
      examples: (json['examples'] as List<dynamic>?)
          ?.map((e) => Test.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeLimit: (json['timeLimit'] as num?)?.toDouble(),
      memoryLimit: (json['memoryLimit'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ejudgeId': instance.ejudgeId,
      'title': instance.title,
      'description': instance.description,
      'finishTime': instance.finishTime?.toIso8601String(),
      'examples': instance.examples,
      'timeLimit': instance.timeLimit,
      'memoryLimit': instance.memoryLimit,
    };
