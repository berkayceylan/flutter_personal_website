import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:personal_website/database/project_json.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersonalJson {
  final String name, summary, github, instagram, facebook, linkedIn;
  final List<dynamic> projectList;

  PersonalJson({
    required this.name,
    required this.summary,
    required this.github,
    required this.instagram,
    required this.facebook,
    required this.linkedIn,
    required this.projectList,
  });

  factory PersonalJson.fromJson(Map<String, dynamic> json) {
    return PersonalJson(
      name: json["name"] as String,
      summary: json["summary"] as String,
      github: json["github"] as String,
      instagram: json["instagram"] as String,
      facebook: json["facebook"] as String,
      linkedIn: json["linkedIn"] as String,
      projectList: json["projects"],
    );
  }
}

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