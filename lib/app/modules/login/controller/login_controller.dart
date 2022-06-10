import 'dart:developer';

import 'package:acdf_dw7_job_timer/app/services/auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_state.dart';

class LoginController extends Cubit<LoginState> {
  final AuthService _authService;
  LoginController({required AuthService authService})
      : _authService = authService,
        super(const LoginState.initial());
  Future<void> sigIn() async {
    try {
      emit(state.copyWith(status: LoginStatus.loading));
      await _authService.signIn();
    } catch (e, s) {
      log('erro ao realizar login', error: e, stackTrace: s);
      emit(
        state.copyWith(
          status: LoginStatus.failure,
          errorMessage: 'Erro ao realizar login',
        ),
      );
    }
  }
}
