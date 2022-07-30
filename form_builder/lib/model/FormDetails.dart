// import 'package:json_annotation/json_annotation.dart';
// import 'package:json_serializable/builder.dart';
import 'package:form_builder/model/ProcessStep.dart';

part 'FormDetails.g.dart';


// @JsonSerializable(explicitToJson: true)
class FormDetails {
  String? formName;
  String? formJSON;

  List<ProcessStep>? processSteps;

  FormDetails();

  factory FormDetails.fromJson(Map<String, dynamic> data) =>
      _$FormDetailsFromJson(data);

  Map<String, dynamic> toJson() => _$FormDetailsToJson(this);
}