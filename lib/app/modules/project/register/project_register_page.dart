import 'package:acdf_dw7_job_timer/app/modules/project/register/controller/project_register_controller.dart';
import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:validatorless/validatorless.dart';

class ProjectRegisterPage extends StatefulWidget {
  final ProjectRegisterController controller;
  const ProjectRegisterPage({super.key, required this.controller});

  @override
  State<ProjectRegisterPage> createState() => _ProjectRegisterPageState();
}

class _ProjectRegisterPageState extends State<ProjectRegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameEC = TextEditingController();
  final _estimateEC = TextEditingController();

  @override
  void dispose() {
    _nameEC.dispose();
    _estimateEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProjectRegisterController, ProjectRegisterStatus>(
      bloc: widget.controller,
      listener: (context, state) {
        switch (state) {
          case ProjectRegisterStatus.sucess:
            Navigator.pop(context);
            break;
          case ProjectRegisterStatus.fail:
            AsukaSnackbar.alert('Erro ao salvar projeto').show();
            break;
          default:
            break;
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Adicionar novo projeto',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        ),
        body: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      controller: _nameEC,
                      decoration: const InputDecoration(
                        label: Text('Nome do Projeto'),
                      ),
                      validator: Validatorless.required(
                          'Obrigatório adicionar um nome'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _estimateEC,
                      decoration: const InputDecoration(
                        label: Text('Estimativa de horas a gastar'),
                      ),
                      keyboardType: TextInputType.number,
                      validator: Validatorless.multiple([
                        Validatorless.required(
                            'Obrigatório adicionar estimativa de horas'),
                        Validatorless.number(
                            'Permitido adicionar somente números'),
                      ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BlocSelector<ProjectRegisterController,
                        ProjectRegisterStatus, bool>(
                      selector: ((state) =>
                          state == ProjectRegisterStatus.loading),
                      bloc: widget.controller,
                      builder: ((state, showLoading) {
                        return Visibility(
                          visible: showLoading,
                          replacement: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(49, 49)),
                            onPressed: () async {
                              final formValidate =
                                  _formKey.currentState?.validate() ?? false;
                              if (formValidate) {
                                final name = _nameEC.text;
                                final estimate = int.parse(_estimateEC.text);
                                await widget.controller
                                    .register(name, estimate);
                              }
                            },
                            child: const Text('Adicionar'),
                          ),
                          child: const Center(
                              child: CircularProgressIndicator.adaptive()),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
