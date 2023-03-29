class ProjectJson {
  final String name, title, flag, category,
      thumbnail, shortdetail, detail, projectURL, projectURLName;
  final List<dynamic> tags, techs, images;
  final bool isEducation;
  ProjectJson({
    this.name = "",
    this.title = "",
    this.flag = "",
    this.category = "",
    this.tags = const [],
    this.techs = const [],
    this.images = const [],
    this.thumbnail = "",
    this.projectURL = "",
    this.projectURLName = "",
    this.shortdetail = "",
    this.detail = "",
    this.isEducation = false,
  });
  factory ProjectJson.fromJson(Map<String, dynamic> json) {
    return ProjectJson(
        name: json["name"] as String,
        title: json["title"] as String,
        flag: json["flag"] as String,
        category: json["category"] as String,
        tags: json["tags"] as List<dynamic>,
        techs: json["techs"] as List<dynamic>,
        images: json["images"] as List<dynamic>,
        thumbnail: json["thumbnail"] as String,
        projectURL: json["project_url"] as String,
        projectURLName: json["project_url_name"] as String,
        shortdetail: json["short_detail"] as String,
        detail: json["detail"] as String,
        isEducation: json["is_education"] as bool);
  }
}
