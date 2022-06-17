part of 'home_controller.dart';

enum HomeStatus {
  initial,
  loading,
  complete,
  fail;
}

class HomeState extends Equatable {
  final List<ProjectViewModel> projects;
  final HomeStatus status;
  final ProjectStatus projectFilter;

  const HomeState._({
    required this.projects,
    required this.status,
    required this.projectFilter,
  });
  HomeState.initial()
      : this._(
          projects: [],
          status: HomeStatus.initial,
          projectFilter: ProjectStatus.emAndamento,
        );

  @override
  List<Object?> get props => [projects, status, projectFilter];

  HomeState copyWith({
    final List<ProjectViewModel>? projects,
    final HomeStatus? status,
    final ProjectStatus? projectFilter,
  }) {
    return HomeState._(
      projects: projects ?? this.projects,
      status: status ?? this.status,
      projectFilter: projectFilter ?? this.projectFilter,
    );
  }
}
