import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_website/screens/about_me.dart';
import 'package:personal_website/screens/education_projects.dart';
import 'package:personal_website/screens/homepage.dart';
import 'package:personal_website/screens/project_page.dart';
import 'package:personal_website/screens/software_projects.dart';
import 'package:personal_website/utils/constants.dart';

final GoRouter appRoutes = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: kHomeAddress,
      builder: (BuildContext context, GoRouterState state) {
        return const Homepage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: '${kProjectAddress}/:name',
          builder: (BuildContext context, GoRouterState state) {
            final name = state.params["name"] ?? "";
            return ProjectPage(name: name,);
          },
        ),
        GoRoute(
          path: kAboutMeAddress,
          builder: (context, state) => const AboutMe(),
        ),
        GoRoute(
          path: kEducationProjectsAddress,
          builder: (context, state) => const EducationProjects(),
        ),
        GoRoute(
          path: kSoftwareProjectsAddress,
          builder: (context, state) => const SoftwareProjects(),
        ),

      ],
    ),
  ],
);