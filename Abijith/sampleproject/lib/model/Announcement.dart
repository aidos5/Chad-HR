import 'package:sampleproject/model/UserCredentials.dart';

// import 'package:json_serializable/json_serializable.dart';
// import 'package:json_annotation/json_annotation.dart';
// import 'package:json_serializable/builder.dart';

part 'Announcement.g.dart';

// @JsonSerializable()
class Announcement {
  String? title;
  String? description;

  Announcement();

  factory Announcement.fromJson(Map<String, dynamic> data) =>
      _$AnnouncementFromJson(data);

  Map<String, dynamic> toJson() => _$AnnouncementToJson(this);
}
