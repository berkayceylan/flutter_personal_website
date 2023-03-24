import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/components/mini_box.dart';
import 'package:personal_website/components/page_structure.dart';
import 'package:personal_website/database/personal_json.dart';
import 'package:personal_website/database/project_json.dart';
import 'package:personal_website/sections/block_title.dart';
import 'package:personal_website/sections/top_menu.dart';
import 'package:http/http.dart' as http;

class ProjectPage extends StatefulWidget {
  final String name;
  const ProjectPage({Key? key, required this.name}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  ProjectJson projectJson = ProjectJson(name: "", title: "", flag: "", category: "", thumbnail: "", shortdetail: "", detail: "");
  String githubDetail = "";
  void getProject() async{
    List<ProjectJson> projectJsonList = await getProjectList();
    for(final json in projectJsonList){
      if(json.name == widget.name){
        setState(() => projectJson = json);
        githubDetail = await http.read(Uri.parse('https://raw.githubusercontent.com/berkayceylan/time_bar_flutter_package/main/README.md'));
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
                  const SizedBox(height: 30,),
                  Text(projectJson.detail),
                  const SizedBox(height: 30,),
                  const MiniBox(
                    text: "More Detail",
                    icon: FontAwesomeIcons.github,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
