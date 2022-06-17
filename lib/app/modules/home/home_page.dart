import 'package:acdf_dw7_job_timer/app/modules/home/controller/home_controller.dart';
import 'package:acdf_dw7_job_timer/app/modules/home/widgets/header_projects_menu.dart';
import 'package:acdf_dw7_job_timer/app/view_models/project_view_model.dart';
import 'package:asuka/snackbars/asuka_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;

  const HomePage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeController, HomeState>(
      bloc: controller,
      listener: ((context, state) {
        if (state.status == HomeStatus.fail) {
          AsukaSnackbar.alert('Erro ao buscar projetos no banco de dados')
              .show();
        }
      }),
      child: Scaffold(
        drawer: const Drawer(
          child: SafeArea(
            child: ListTile(),
          ),
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(
                title: Text('Projetos'),
                centerTitle: true,
                expandedHeight: 100,
                toolbarHeight: 100,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(15))),
              ),
              SliverPersistentHeader(
                delegate: HeaderProjectsMenu(),
                pinned: true,
              ),
              BlocSelector<HomeController, HomeState, bool>(
                bloc: controller,
                selector: (state) => state.status == HomeStatus.loading,
                builder: (context, showloading) {
                  return SliverVisibility(
                    visible: showloading,
                    sliver: const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 50,
                        child:
                            Center(child: CircularProgressIndicator.adaptive()),
                      ),
                    ),
                  );
                },
              ),
              BlocSelector<HomeController, HomeState, List<ProjectViewModel>>(
                bloc: controller,
                selector: (state) => state.projects,
                builder: (context, projects) {
                  return SliverList(
                    delegate: SliverChildListDelegate(projects
                        .map(
                          (project) => ListTile(
                            title: Text(project.name),
                            subtitle: Text('${project.estimate}h'),
                          ),
                        )
                        .toList()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
