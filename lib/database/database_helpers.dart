import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:personal_website/database/personal_json.dart';
import 'package:personal_website/database/project_json.dart';

Future<PersonalJson> getPersonalInfo() async {
  PersonalJson personalJson;
  final String jsonString = await rootBundle.loadString('assets/info.json');
  final jsonInfo = json.decode(jsonString);
  personalJson = PersonalJson.fromJson(jsonInfo as Map<String, dynamic>);
  return personalJson;
}

Future<List<ProjectJson>> getProjectList() async{
  PersonalJson personalJson = await getPersonalInfo();
  List<ProjectJson> projectList = [];
  final projectJsonList = personalJson.projectList;
  for(final json in projectJsonList){
    final project = ProjectJson.fromJson(json as Map<String, dynamic>);
    projectList.add(project);
  }
  return projectList;
}