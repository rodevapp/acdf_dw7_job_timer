import 'package:acdf_dw7_job_timer/app/core/entities/converters/project_status_converter.dart';
import 'package:acdf_dw7_job_timer/app/core/entities/project_status.dart';
import 'package:acdf_dw7_job_timer/app/core/entities/project_task.dart';
import 'package:isar/isar.dart';

part 'project.g.dart';

@Collection()
class Project {
  @Id()
  int? id;
  late String name;

  @ProjectStatusConverter()
  late ProjectStatus status;
  final tasks = IsarLinks<ProjectTask>();
}
