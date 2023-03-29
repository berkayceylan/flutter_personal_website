
class PersonalJson {
  final String name,
      summary,
      github,
      instagram,
      facebook,
      linkedIn,
      phoneNumberTr,
      phoneNumberCz,
      whatsapp,
      aboutMe;
  final List<dynamic> projectList;

  PersonalJson({
    this.name = "",
    this.summary = "",
    this.github = "",
    this.instagram = "",
    this.facebook = "",
    this.linkedIn = "",
    this.whatsapp = "",
    this.projectList = const [],
    this.phoneNumberCz = "",
    this.phoneNumberTr = "",
    this.aboutMe = "",
  });

  factory PersonalJson.fromJson(Map<String, dynamic> json) {
    return PersonalJson(
        name: json["name"] as String,
        summary: json["summary"] as String,
        github: json["github"] as String,
        instagram: json["instagram"] as String,
        facebook: json["facebook"] as String,
        linkedIn: json["linkedIn"] as String,
        whatsapp: json["whatsapp"] as String,
        projectList: json["projects"],
        phoneNumberTr: json["phone_number_tr"],
        phoneNumberCz: json["phone_number_cz"],
        aboutMe: json["about_me"],
    );
  }
}
