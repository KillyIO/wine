// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDTOImpl _$$UserDTOImplFromJson(Map<String, dynamic> json) =>
    _$UserDTOImpl(
      emailAddress: json['emailAddress'] as String,
      uid: json['uid'] as String,
      updatedAt: _$JsonConverterFromJson<Object, FieldValue>(
          json['updatedAt'], const ServerTimestampConverter().fromJson),
      username: json['username'] as String,
    );

Map<String, dynamic> _$$UserDTOImplToJson(_$UserDTOImpl instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'uid': instance.uid,
      'updatedAt': _$JsonConverterToJson<Object, FieldValue>(
          instance.updatedAt, const ServerTimestampConverter().toJson),
      'username': instance.username,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
