import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/components/contact.dart';
import 'package:personal_website/components/social_media_icon.dart';
import 'package:personal_website/database/database_helpers.dart';
import 'package:personal_website/database/personal_json.dart';
import 'package:personal_website/utils/constants.dart';

class ImageTextRow extends StatefulWidget {
  const ImageTextRow({Key? key}) : super(key: key);

  @override
  State<ImageTextRow> createState() => _ImageTextRowState();
}

class _ImageTextRowState extends State<ImageTextRow> {
  PersonalJson personalJson = PersonalJson();
  final double _maxWidth = 600;
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
    MediaQueryData queryData = MediaQuery.of(context);
    return Flex(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.horizontal,
      children: [
        queryData.size.width > 800
            ? Flexible(
                child: Image.asset(
                  "assets/images/my_image.jpeg",
                  fit: BoxFit.contain,
                ),
              )
            : const SizedBox(),
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
                queryData.size.width < 800
                    ? Column(
                        children: [
                          const SizedBox(height: 10),
                          Image.asset(
                            "assets/images/my_image.jpeg",
                            fit: BoxFit.contain,
                          ),
                        ],
                      )
                    : const SizedBox(),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: _maxWidth),
                  child: Text(
                    personalJson.summary,
                    textAlign: TextAlign.left,
                    style: bodyTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: _maxWidth),
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
      ],
    );
  }
}
