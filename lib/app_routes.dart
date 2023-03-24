import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_website/screens/homepage.dart';
import 'package:personal_website/screens/project_page.dart';
import 'package:personal_website/utils/contants.dart';

final GoRouter appRoutes = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: kHomePageAddress,
      builder: (BuildContext context, GoRouterState state) {
        return const Homepage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: '${kProjectPageAdress}/:name',
          builder: (BuildContext context, GoRouterState state) {
            final name = state.params["name"] ?? "";
            return ProjectPage(name: name,);
          },
        ),
      ],
    ),
  ],
);