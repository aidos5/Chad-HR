import 'package:json_annotation/json_annotation.dart';
part 'rolessave.g.dart';

@JsonSerializable()
class RolesSave {
  final String roles;

  const RolesSave({required this.roles});

  factory RolesSave.fromJson(Map<String, dynamic> json) =>
      _$RolesSaveFromJson(json);

  Map<String, dynamic> toJson() => _$RolesSaveToJson(this);
  @override
  String toString() => 'RolesSave{$roles}';
}
