import 'package:acdf_dw7_job_timer/app/modules/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [];
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
      ];
}
