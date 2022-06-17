import 'package:acdf_dw7_job_timer/app/entities/project_task.dart';

class ProjectTaskModel {
  final int? id;
  final String name;
  final int estimate;

  ProjectTaskModel({
    this.id,
    required this.name,
    required this.estimate,
  });

  factory ProjectTaskModel.fromEntity(ProjectTask task) {
    return ProjectTaskModel(
      id: task.id,
      name: task.name,
      estimate: task.estimate,
    );
  }
}
