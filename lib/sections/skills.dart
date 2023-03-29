//Arduino c gibi education skill'leri de eklenebilir.
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/components/mini_box.dart';
import 'package:personal_website/components/my_wrap.dart';
import 'package:personal_website/utils/contants.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyWrap(
      maxWidth: 820,
      children: [
        MiniBox(
          text: "Flutter",
          icon: FontAwesomeIcons.google,
          iconColor: Colors.blue,
        ),
        MiniBox(
          text: "Dart",
          icon: FontAwesomeIcons.google,
          iconColor: Colors.blue,
        ),
        MiniBox(
          text: "Javascript",
          icon: FontAwesomeIcons.js,
          iconColor: kjsYellow,
        ),
        MiniBox(
          text: "JQuery",
          icon: FontAwesomeIcons.js,
          iconColor: kjqueryBlue,
        ),

        MiniBox(
          text: "DJango",
          icon: FontAwesomeIcons.python,
          iconColor: kjsYellow,
        ),
        MiniBox(
          text: "Arduino",
          icon: FontAwesomeIcons.a,
          iconColor: kRedColor,
        ),
        MiniBox(
          text: "MySQL",
          icon: FontAwesomeIcons.database,
          iconColor: Colors.blue,
        ),
        MiniBox(
          text: "PHP",
          icon: FontAwesomeIcons.php,
          iconColor: kjqueryBlue,
        ),

      ],
    );
  }
}
