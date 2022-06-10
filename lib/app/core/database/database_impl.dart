import 'package:acdf_dw7_job_timer/app/core/entities/project.dart';
import 'package:acdf_dw7_job_timer/app/core/entities/project_task.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import './database.dart';

class DatabaseImpl implements Database {
  Isar? _databaseInstance;

  @override
  Future<Isar> openConnection() async {
    if (_databaseInstance == null) {
      final dir = await getApplicationSupportDirectory();
      _databaseInstance = await Isar.open(
        schemas: [ProjectTaskSchema, ProjectSchema],
        directory: dir.path,
        inspector: true,
      );
    }
    return _databaseInstance!;
  }
}
