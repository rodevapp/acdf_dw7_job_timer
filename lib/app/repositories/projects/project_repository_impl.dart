import 'dart:developer';

import 'package:acdf_dw7_job_timer/app/core/database/database.dart';
import 'package:acdf_dw7_job_timer/app/core/exceptions/failure.dart';
import 'package:acdf_dw7_job_timer/app/entities/project.dart';
import 'package:acdf_dw7_job_timer/app/entities/project_status.dart';
import 'package:isar/isar.dart';

import 'project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  final Database _database;

  ProjectRepositoryImpl({required Database database}) : _database = database;

  @override
  Future<void> register(Project project) async {
    try {
      final connection = await _database.openConnection();

      await connection.writeTxn((isar) {
        return isar.projects.put(project);
      });
    } on IsarError catch (e, s) {
      log('Erro ao cadastrar projeto', error: e, stackTrace: s);
      throw Failure(message: 'Erro ao cadastar novo projeto');
    }
  }

  @override
  Future<List<Project>> findByStatus(ProjectStatus projectStatus) async {
    final connection = await _database.openConnection();
    final projects =
        connection.projects.filter().statusEqualTo(projectStatus).findAll();
    return projects;
  }
}
