import 'dart:developer';

import 'package:acdf_dw7_job_timer/app/entities/project_status.dart';
import 'package:acdf_dw7_job_timer/app/services/projects/project_service.dart';
import 'package:acdf_dw7_job_timer/app/view_models/project_view_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeController extends Cubit<HomeState> {
  ProjectService _projectService;
  HomeController({required ProjectService projectService})
      : _projectService = projectService,
        super(HomeState.initial());

  Future<void> loadProjects() async {
    try {
      emit(state.copyWith(status: HomeStatus.loading));
      final projects = await _projectService.findByStatus(state.projectFilter);
      emit(state.copyWith(status: HomeStatus.complete, projects: projects));
    } catch (e, s) {
      log('Erro ao buscar projetos nno banco de dados',
          error: e, stackTrace: s);
      emit(state.copyWith(status: HomeStatus.fail));
    }
  }
}
