// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthDtoImpl _$$AuthDtoImplFromJson(Map<String, dynamic> json) =>
    _$AuthDtoImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$AuthDtoImplToJson(_$AuthDtoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
