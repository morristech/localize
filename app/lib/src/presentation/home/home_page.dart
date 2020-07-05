/*
 * Copyright 2020 Pedro Massango. All rights reserved.
 * Created by Pedro Massango on 5/7/2020.
 */

import 'package:app/src/application/auth/auth_state_view_model.dart';
import 'package:app/src/application/projects/projects_view_model.dart';
import 'package:app/src/domain/core/repositories/project_repository.dart';
import 'package:app/src/presentation/home/widgets/project_content_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:build_context/build_context.dart';
import 'widgets/side_bar.dart';

class HomePage extends StatefulWidget {
  static String route = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final projectsViewModel = ProjectsViewModel(Modular.get<ProjectRepository>());

  @override
  void initState() {
    super.initState();
    projectsViewModel.loadUserProjects(context.cubit<AuthStateViewModel>().state.user.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CubitProvider<ProjectsViewModel>.value(
        value: projectsViewModel,
        child: Row(
          children: [
            SideBar(),
            Expanded(
              child: CubitBuilder<ProjectsViewModel, ProjectsState>(
                buildWhen: (prevState, newState) => prevState.selectedProject != newState.selectedProject,
                builder: (context, state) {
                  if (state.selectedProject != null) {
                    return ProjectContentView(project: state.selectedProject);
                  }
                  return _NoSelectedProjectWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NoSelectedProjectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Icon(
                Icons.device_unknown, size: 90, color: context.primaryColor),
          ),
          Text(
            'No Project Selected.\nPlease select or create one.',
            textAlign: TextAlign.center,
            style: context.textTheme.headline6.copyWith(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
