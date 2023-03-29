import 'package:flutter/material.dart';
import 'package:personal_website/components/page_structure.dart';
import 'package:personal_website/sections/block_title.dart';
import 'package:personal_website/sections/footer.dart';
import 'package:personal_website/sections/image_text_row.dart';
import 'package:personal_website/sections/projects.dart';
import 'package:personal_website/sections/skills.dart';
import 'package:personal_website/sections/top_menu.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageStructure(
      children: [
        TopMenu(),
        SizedBox(height: 10),
        ImageTextRow(),
        SizedBox(height: 20),
        BlockTitle(
          text: "SKILLS",
          subText: "My Programming Skills",
          divider: false,
        ),
        SizedBox(height: 30),
        Skills(),
        SizedBox(height: 20),
        BlockTitle(
          text: "My Software Projects",
          divider: false,
        ),
        SizedBox(height: 30),
        Projects(
          isEducation: false,
        ),
        SizedBox(
          height: 20,
        ),
        BlockTitle(
          text: "My Education Projects",
        ),
        SizedBox(height: 30),
        Projects(
          isEducation: true,
        ),
        Footer(),
      ],
    );
  }
}
