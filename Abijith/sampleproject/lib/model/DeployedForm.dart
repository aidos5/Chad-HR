import 'package:sampleproject/model/UserCredentials.dart';

// import 'package:json_serializable/json_serializable.dart';
// import 'package:json_annotation/json_annotation.dart';
// import 'package:json_serializable/builder.dart';

import 'FormDetails.dart';

part 'DeployedForm.g.dart';

// @JsonSerializable(explicitToJson: true)
class DeployedForm {
  FormDetails? formDetails;
  bool? formStatus;
  String? formClarification;
  List<String?>? concernedUsers;
  String? formDeployer;

  DeployedForm();

  factory DeployedForm.fromJson(Map<String, dynamic> data) =>
      _$DeployedFormFromJson(data);

  Map<String, dynamic> toJson() => _$DeployedFormToJson(this);
}
