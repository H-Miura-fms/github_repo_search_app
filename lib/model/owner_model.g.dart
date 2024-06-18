// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OwnerModelImpl _$$OwnerModelImplFromJson(Map<String, dynamic> json) =>
    _$OwnerModelImpl(
      name: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
    );

Map<String, dynamic> _$$OwnerModelImplToJson(_$OwnerModelImpl instance) =>
    <String, dynamic>{
      'login': instance.name,
      'avatar_url': instance.avatarUrl,
    };
