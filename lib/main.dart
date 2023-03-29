import 'package:flutter/material.dart';
import 'package:personal_website/app_routes.dart';
import 'package:url_strategy/url_strategy.dart';

//beauty box -→ mini box
//create med box
void main() {
  setPathUrlStrategy();
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

// MaterialApp(
// title: 'Flutter Demo',
// theme: ThemeData(
// primarySwatch: Colors.blue,
// ),
// initialRoute: kProjectPageAdress,
// routes: {
// kHomePageAddress: (context) => const Homepage(),
// kProjectPageAdress: (context) => const ProjectPage(),
// },
// );
