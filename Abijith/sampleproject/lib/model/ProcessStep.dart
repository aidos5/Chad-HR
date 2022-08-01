// import 'package:json_annotation/json_annotation.dart';
// import 'package:json_serializable/builder.dart';

part 'ProcessStep.g.dart';

// @JsonSerializable()
class ProcessStep {
  String? stepType = '';
  List<String?>? stepPerformers = [];
  bool? stepCompleted;

  ProcessStep({this.stepType, this.stepCompleted, this.stepPerformers});

  factory ProcessStep.fromJson(Map<String, dynamic> data) =>
      _$ProcessStepFromJson(data);

  Map<String, dynamic> toJson() => _$ProcessStepToJson(this);
}
