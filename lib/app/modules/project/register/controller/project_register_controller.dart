import 'dart:developer';
import 'package:acdf_dw7_job_timer/app/entities/project_status.dart';
import 'package:acdf_dw7_job_timer/app/services/projects/project_service.dart';
import 'package:acdf_dw7_job_timer/app/view_models/project_view_model.dart';
import 'package:bloc/bloc.dart';

part 'project_register_status.dart';

class ProjectRegisterController extends Cubit<ProjectRegisterStatus> {
  final ProjectService _projectService;

  ProjectRegisterController({required ProjectService projectService})
      : _projectService = projectService,
        super(ProjectRegisterStatus.initial);

  Future<void> register(String name, int estimate) async {
    try {
      emit(ProjectRegisterStatus.loading);
      final project = ProjectViewModel(
        name: name,
        estimate: estimate,
        status: ProjectStatus.emAndamento,
        tasks: [],
      );
      await _projectService.register(project);
      emit(ProjectRegisterStatus.sucess);
    } catch (e, s) {
      log('Erro ao salvar projeto', error: e, stackTrace: s);
      emit(ProjectRegisterStatus.fail);
    }
  }
}
