// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserCredentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCredentials _$UserCredentialsFromJson(Map<String, dynamic> json) =>
    UserCredentials()
      ..userName = json['userName'] as String?
      ..userPassword = json['userPassword'] as String?
      ..userRole = json['userRole'] as String?;

Map<String, dynamic> _$UserCredentialsToJson(UserCredentials instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'userPassword': instance.userPassword,
      'userRole': instance.userRole,
    };
