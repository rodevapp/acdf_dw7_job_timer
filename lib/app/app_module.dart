import 'package:acdf_dw7_job_timer/app/modules/home/home_module.dart';
import 'package:acdf_dw7_job_timer/app/modules/login/login_module.dart';
import 'package:acdf_dw7_job_timer/app/modules/splash/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ModuleRoute('/login', module: LoginModule()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
