import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/app_routes.dart';
import 'package:personal_website/database/personal_json.dart';
import 'package:personal_website/screens/homepage.dart';
import 'package:personal_website/screens/project_page.dart';
import 'package:personal_website/sections/block_title.dart';
import 'package:personal_website/sections/projects.dart';
import 'package:personal_website/sections/skills.dart';
import 'package:personal_website/sections/image_text_row.dart';
import 'package:personal_website/sections/top_menu.dart';
import 'package:personal_website/utils/contants.dart';

//beauty box -→ mini box
//create med box
void main() {
  runApp(const MyApp());
  getProjectList();

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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