class ProjectJson {
  final String name, title, flag, category, thumbnail, shortdetail, detail;

  ProjectJson({
    required this.name,
    required this.title,
    required this.flag,
    required this.category,
    required this.thumbnail,
    required this.shortdetail,
    required this.detail,
  });
  factory ProjectJson.fromJson(Map<String, dynamic> json) {
    return ProjectJson(
      name: json["name"] as String,
      title: json["title"] as String,
      flag: json["flag"] as String,
      category: json["category"] as String,
      thumbnail: json["thumbnail"] as String,
      shortdetail: json["short_detail"] as String,
      detail: json["detail"] as String,
    );
  }
}
