import 'package:flutter/material.dart';
import 'package:personal_website/components/page_structure.dart';
import 'package:personal_website/sections/block_title.dart';
import 'package:personal_website/sections/footer.dart';
import 'package:personal_website/sections/image_longer_text_row.dart';
import 'package:personal_website/sections/projects.dart';
import 'package:personal_website/sections/skills.dart';
import 'package:personal_website/sections/top_menu.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageStructure(
      children: [
        TopMenu(),
        SizedBox(height: 10),
        ImageLongerTextRow(),
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
          subText: "",
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
          subText: "",
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
