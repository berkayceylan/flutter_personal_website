import 'package:flutter/material.dart';
import 'package:personal_website/components/mini_box.dart';
import 'package:personal_website/components/my_wrap.dart';
import 'package:personal_website/components/page_structure.dart';
import 'package:personal_website/components/single_word.dart';
import 'package:personal_website/database/database_helpers.dart';
import 'package:personal_website/database/project_json.dart';
import 'package:personal_website/sections/block_title.dart';
import 'package:personal_website/sections/footer.dart';
import 'package:personal_website/sections/top_menu.dart';
import 'package:personal_website/utils/contants.dart';
import 'dart:html' as html;

class ProjectPage extends StatefulWidget {
  final String name;
  const ProjectPage({Key? key, required this.name}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  ProjectJson projectJson = ProjectJson();
  void getProject() async {
    List<ProjectJson> projectJsonList = await getProjectList();
    for (final json in projectJsonList) {
      if (json.name == widget.name) {
        setState(() => projectJson = json);
        print(projectJson.tags.toString());
        break;
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProject();
  }

  @override
  Widget build(BuildContext context) {
    return PageStructure(
      children: [
        const TopMenu(),
        const SizedBox(height: 10),
        BlockTitle(text: projectJson.title),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Image.network(
                projectJson.thumbnail,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    projectJson.detail,
                    style: bodyTextStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Technologies",
                        style: kboldText,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      MyWrap(
                        children: List.generate(
                          projectJson.techs.length,
                          (index) => SingleWord(
                            word: projectJson.techs.elementAt(index),
                            color: kDarkPurpleColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        html.window.open(projectJson.projectURL, "_blank");
                      },
                      child: projectJson.projectURL.isEmpty
                          ? const SizedBox()
                          : MiniBox(
                              text: projectJson.projectURLName,
                              icon: Icons.touch_app,
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        projectJson.images.isNotEmpty
            ? Column(
                children: [
                  const BlockTitle(
                    text: "Images",
                  ),
                  MyWrap(
                    children: List.generate(
                      projectJson.images.length,
                      (index) => Container(
                        constraints: const BoxConstraints(maxHeight: 800),
                        child: Image.network(
                          projectJson.images.elementAt(index),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : const SizedBox(),
        const SizedBox(
          height: 20,
        ),
        MyWrap(
          children: List.generate(
            projectJson.tags.length,
            (index) => SingleWord(
              word: projectJson.tags.elementAt(index),
              color: kDarkBlueColor,
            ),
          ),
        ),
        const Footer(),
      ],
    );
  }
}
