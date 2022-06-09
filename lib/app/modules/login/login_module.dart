import 'package:acdf_dw7_job_timer/app/modules/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  List<Bind<Object>> get binds => [];
  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: ((context, args) => const LoginPage()))];
}
