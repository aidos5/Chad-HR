// import 'package:json_annotation/json_annotation.dart';
// import 'package:json_serializable/builder.dart';

part 'UserCredentials.g.dart';

// @JsonSerializable()
class UserCredentials {
  String? userName;
  String? userPassword;
  String? userRole;

  UserCredentials();

  factory UserCredentials.fromJson(Map<String, dynamic> data) =>
      _$UserCredentialsFromJson(data);

  Map<String, dynamic> toJson() => _$UserCredentialsToJson(this);
}
