import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/components/social_media_icon.dart';
import 'package:personal_website/database/personal_json.dart';
import 'package:personal_website/utils/contants.dart';

class ImageTextRow extends StatefulWidget {
  const ImageTextRow({Key? key}) : super(key: key);

  @override
  State<ImageTextRow> createState() => _ImageTextRowState();
}

class _ImageTextRowState extends State<ImageTextRow> {
  PersonalJson personalJson = PersonalJson(
      name: "name",
      summary: "",
      github: "",
      instagram: "",
      facebook: "",
      linkedIn: "",
      projectList: []);

  void getInfo() async {
    PersonalJson _personalJson = await getPersonalInfo();
    setState(() {
      personalJson = _personalJson;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.horizontal,
      children: [
        Flexible(
          child: Image.asset(
            "assets/images/my_image.jpeg",
            fit: BoxFit.contain,
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Text(
                  personalJson.name,
                  style: khandWritingTitle,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: Text(
                    personalJson.summary,
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialMediaIcon(
                      icon: FontAwesomeIcons.github,
                      iconColor: Colors.black,
                      url: personalJson.github,
                    ),
                    SocialMediaIcon(
                      icon: FontAwesomeIcons.linkedin,
                      iconColor: kjqueryBlue,
                      url: personalJson.linkedIn,
                    ),
                    SocialMediaIcon(
                      icon: FontAwesomeIcons.instagram,
                      url: personalJson.instagram,
                    ),
                    SocialMediaIcon(
                      icon: FontAwesomeIcons.facebook,
                      iconColor: kjqueryBlue,
                      url: personalJson.facebook,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
