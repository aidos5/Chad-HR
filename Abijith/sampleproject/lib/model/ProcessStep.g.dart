// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProcessStep.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProcessStep _$ProcessStepFromJson(Map<String, dynamic> json) => ProcessStep(
      stepType: json['stepType'] as String?,
      stepCompleted: json['stepCompleted'] as bool?,
      stepPerformers: (json['stepPerformers'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$ProcessStepToJson(ProcessStep instance) =>
    <String, dynamic>{
      'stepType': instance.stepType,
      'stepPerformers': instance.stepPerformers,
      'stepCompleted': instance.stepCompleted,
    };
