import 'package:flutter/material.dart';
import 'package:personal_website/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Berkay Ceylan",
      routerConfig: appRoutes,
    );
  }
}

