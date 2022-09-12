import 'package:flutter/material.dart';
import 'package:personal_website/components/med_box.dart';
import 'package:personal_website/components/my_wrap.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyWrap(
      children: [
        MedBox(
            title: "Lorem Ipsum",
            explain:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
        MedBox(
            title: "Lorem Ipsum",
            explain:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
        MedBox(
            title: "Lorem Ipsum",
            explain:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
        MedBox(
            title: "Lorem Ipsum",
            explain:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
      ],
    );
  }
}
