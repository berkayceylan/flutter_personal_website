import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/components/social_media_icon.dart';
import 'package:personal_website/utils/contants.dart';

class ImageTextRow extends StatelessWidget {
  const ImageTextRow({Key? key}) : super(key: key);

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
                  "Berkay Ceylan",
                  style: khandWritingTitle,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla fringilla tristique ipsum. Fusce ac egestas mauris. Morbi nec interdum urna. Cras tempor semper dolor vel pharetra. Suspendisse nec ornare eros. Praesent nisi mauris, ultrices at tempor lobortis, interdum sed elit. Duis at maximus leo. Cras at diam at dui porta tempor et in orci. Integer eu condimentum tellus, a gravida ex. ",
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SocialMediaIcon(
                      icon: FontAwesomeIcons.github,
                      iconColor: Colors.black,
                    ),
                    SocialMediaIcon(
                      icon: FontAwesomeIcons.linkedin,
                      iconColor: kjqueryBlue,
                    ),
                    SocialMediaIcon(
                      icon: FontAwesomeIcons.instagram,
                    ),
                    SocialMediaIcon(
                      icon: FontAwesomeIcons.facebook,
                      iconColor: kjqueryBlue,
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
