// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DeployedForm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeployedForm _$DeployedFormFromJson(Map<String, dynamic> json) => DeployedForm()
  ..formDetails = json['formDetails'] == null
      ? null
      : FormDetails.fromJson(json['formDetails'] as Map<String, dynamic>)
  ..formStatus = json['formStatus'] as bool?
  ..formClarification = json['formClarification'] as String?;

Map<String, dynamic> _$DeployedFormToJson(DeployedForm instance) =>
    <String, dynamic>{
      'formDetails': instance.formDetails?.toJson(),
      'formStatus': instance.formStatus,
      'formClarification': instance.formClarification,
    };
