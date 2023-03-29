import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/components/contact.dart';
import 'package:personal_website/components/social_media_icon.dart';
import 'package:personal_website/database/database_helpers.dart';
import 'package:personal_website/database/personal_json.dart';
import 'package:personal_website/utils/contants.dart';

class ImageLongerTextRow extends StatefulWidget {
  const ImageLongerTextRow({Key? key}) : super(key: key);

  @override
  State<ImageLongerTextRow> createState() => _ImageTextRowState();
}

class _ImageTextRowState extends State<ImageLongerTextRow> {
  PersonalJson personalJson = PersonalJson();

  void getInfo() async {
    PersonalJson _personalJson = await getPersonalInfo();
    setState(() {
      personalJson = _personalJson;
    });
  }

  @override
  void initState() {
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
                  height: 10,
                ),
                const SizedBox(height: 20,),
                Container(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: Text(
                    personalJson.aboutMe,
                    textAlign: TextAlign.left,
                    style: bodyTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SocialMediaIcon(
                        icon: FontAwesomeIcons.whatsapp,
                        iconColor: Colors.green,
                        url: personalJson.whatsapp,
                      ),
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
                ),
                const SizedBox(
                  height: 50,
                ),
                Contact(
                  number1: personalJson.phoneNumberTr,
                  number2: personalJson.phoneNumberCz,
                  email: "berkayceylan150@gmail.com",
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
