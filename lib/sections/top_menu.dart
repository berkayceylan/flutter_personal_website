import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_website/components/my_wrap.dart';
import 'package:personal_website/components/top_menu_item.dart';
import 'package:personal_website/utils/constants.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyWrap(
      children: [
        // TopMenuItem(
        //   text: "",
        // ),
        // TopMenuItem(text: "   "),
        TopMenuItem(
          text: "Homepage",
          onTap: () => context.go("/"),
        ),
        TopMenuItem(
          text: "About Me",
          onTap: () => context.go("/$kAboutMeAddress"),
        ),
        TopMenuItem(
          text: "Education Projects",
          onTap: () => context.go("/$kEducationProjectsAddress"),
        ),
        TopMenuItem(
          text: "Software Projects",
          onTap: () => context.go("/$kSoftwareProjectsAddress"),
        ),
        // Expanded(
        //   child: TopMenuItem(
        //     text: "   ",
        //     textAlign: TextAlign.right,
        //   ),
        // ),
        // TopMenuItem(text: "  ")
      ],
    );
  }
}