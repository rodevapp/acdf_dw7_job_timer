import 'package:acdf_dw7_job_timer/app/core/entities/project_status.dart';
import 'package:isar/isar.dart';

class ProjectStatusConverter extends TypeConverter<ProjectStatus, int> {
  const ProjectStatusConverter();

  @override
  ProjectStatus fromIsar(int object) {
    return ProjectStatus.values[object];
  }

  @override
  int toIsar(ProjectStatus object) {
    return object.index;
  }
}
