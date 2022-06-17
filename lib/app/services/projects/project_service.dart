import 'package:acdf_dw7_job_timer/app/entities/project_status.dart';
import 'package:acdf_dw7_job_timer/app/view_models/project_view_model.dart';

abstract class ProjectService {
  Future<void> register(ProjectViewModel projectModel);
  Future<List<ProjectViewModel>> findByStatus(ProjectStatus projectStatus);
}
