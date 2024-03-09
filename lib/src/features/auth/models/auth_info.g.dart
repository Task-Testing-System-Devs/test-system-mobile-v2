// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthInfoImpl _$$AuthInfoImplFromJson(Map<String, dynamic> json) =>
    _$AuthInfoImpl(
      token: json['token'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$AuthInfoImplToJson(_$AuthInfoImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'role': instance.role,
    };
