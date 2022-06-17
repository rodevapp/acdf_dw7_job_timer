import 'package:acdf_dw7_job_timer/app/entities/project.dart';
import 'package:acdf_dw7_job_timer/app/entities/project_status.dart';
import 'package:acdf_dw7_job_timer/app/repositories/projects/project_repository.dart';
import 'package:acdf_dw7_job_timer/app/view_models/project_view_model.dart';

import './project_service.dart';

class ProjectServiceImpl implements ProjectService {
  final ProjectRepository _projectRepository;

  ProjectServiceImpl({required ProjectRepository projectRepository})
      : _projectRepository = projectRepository;

  @override
  Future<void> register(ProjectViewModel projectViewModel) async {
    final project = Project()
      ..id = projectViewModel.id
      ..name = projectViewModel.name
      ..status = projectViewModel.status
      ..estimate = projectViewModel.estimate;

    await _projectRepository.register(project);
  }

  @override
  Future<List<ProjectViewModel>> findByStatus(
      ProjectStatus projectStatus) async {
    final projects = await _projectRepository.findByStatus(projectStatus);
    return projects.map(ProjectViewModel.fromEntity).toList();
  }
}
