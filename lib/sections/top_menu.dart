import 'package:flutter/material.dart';
import 'package:personal_website/components/top_menu_item.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // TopMenuItem(
        //   text: "",
        // ),
        // TopMenuItem(text: "   "),
        TopMenuItem(
          text: "Homepage",
        ),
        TopMenuItem(
          text: "About Me",
        ),
        TopMenuItem(
          text: "Projects",
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