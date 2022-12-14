import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: const [
            TopMenu(),
            SizedBox(height: 10),
            ImageTextRow(),
            SizedBox(height: 20),
            BlockTitle(text: "SKILLS", subText: "My Programming Skills", divider: false,),
            SizedBox(height: 30),
            Skills(),
            SizedBox(height: 20),
            BlockTitle(text: "My Projects", subText: "My Software Projects", divider: false,),
            SizedBox(height: 30),
            Projects(),
            SizedBox(height: 20,),
            BlockTitle(text: "My Projects", subText: "My Education Projects"),
            SizedBox(height: 30),
            Projects(),
            SizedBox(height: 300,),
          ],
        ),
      ),
    );
  }
}
