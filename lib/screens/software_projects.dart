import 'package:flutter/material.dart';
import 'package:personal_website/components/page_structure.dart';
import 'package:personal_website/sections/block_title.dart';
import 'package:personal_website/sections/footer.dart';
import 'package:personal_website/sections/projects.dart';
import 'package:personal_website/sections/top_menu.dart';

class SoftwareProjects extends StatelessWidget {
  const SoftwareProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageStructure(
      children: [
        TopMenu(),
        SizedBox(height: 20),
        BlockTitle(text: "My Software Projects"),
        SizedBox(height: 30),
        Projects(isEducation: false,),

        Footer(),
      ],
    );
  }
}
