// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FormDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormDetails _$FormDetailsFromJson(Map<String, dynamic> json) => FormDetails()
  ..formName = json['formName'] as String?
  ..formJSON = json['formJSON'] as String?
  ..processSteps = (json['processSteps'] as List<dynamic>?)
      ?.map((e) => ProcessStep.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$FormDetailsToJson(FormDetails instance) =>
    <String, dynamic>{
      'formName': instance.formName,
      'formJSON': instance.formJSON,
      'processSteps': instance.processSteps?.map((e) => e.toJson()).toList(),
    };
