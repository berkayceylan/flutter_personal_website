import 'package:flutter/material.dart';
import 'package:personal_website/sections/block_title.dart';
import 'package:personal_website/sections/image_text_row.dart';
import 'package:personal_website/sections/projects.dart';
import 'package:personal_website/sections/skills.dart';
import 'package:personal_website/sections/top_menu.dart';

class PageStructure extends StatelessWidget {
  final List<Widget> children;
  const PageStructure({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: children
      ),
    );
  }
}
