import 'package:flutter/material.dart';
import 'package:personal_website/components/med_box.dart';
import 'package:personal_website/components/my_wrap.dart';
import 'package:personal_website/database/database_helpers.dart';
import 'package:personal_website/database/project_json.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_website/utils/contants.dart';

//Get project list from json
//add is_education variable

class Projects extends StatefulWidget {
  final bool isEducation;
  const Projects({Key? key, required this.isEducation}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  List<Widget> projectWidgetList = [];
  void initProjectWidget() async {
    List<ProjectJson> _allProject = await getProjectList();
    for (final project in _allProject) {
      setState(() {
        if (project.isEducation == widget.isEducation) {
          projectWidgetList.add(
            InkWell(
                onTap: () => context.go("/$kProjectAddress/${project.name}"),
                child: MedBox(
                  title: project.title,
                  explain: project.shortdetail,
                  imgUrl: project.thumbnail,
                  category: project.category,
                )),
          );
        }
      });
    }
  }

  @override
  void initState() {
    super.initState();
    initProjectWidget();
  }

  @override
  Widget build(BuildContext context) {
    return MyWrap(
      children: projectWidgetList,
    );
  }
}
