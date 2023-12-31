// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDTOImpl _$$UserDTOImplFromJson(Map<String, dynamic> json) =>
    _$UserDTOImpl(
      emailAddress: json['emailAddress'] as String,
      uid: json['uid'] as String,
      updatedAt: const ServerTimestampConverter()
          .fromJson(json['updatedAt'] as Object),
      username: json['username'] as String,
    );

Map<String, dynamic> _$$UserDTOImplToJson(_$UserDTOImpl instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'uid': instance.uid,
      'updatedAt': const ServerTimestampConverter().toJson(instance.updatedAt),
      'username': instance.username,
    };
