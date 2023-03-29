import 'package:flutter/material.dart';
import 'package:personal_website/components/single_word.dart';
import 'package:personal_website/utils/contants.dart';

class MedBox extends StatelessWidget {
  final String title, explain, imgUrl, category;
  const MedBox(
      {Key? key,
      required this.title,
      required this.explain,
      required this.imgUrl,
      required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 470),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(10),),
      child: Column(
        children: [
          Image.network(
            imgUrl,
            width: 300,
            height: 300,
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          SingleWord(
            word: category,
            color: kDarkPurpleColor,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              constraints: const BoxConstraints(maxWidth: 250),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: ksmallTitle,
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 280),
            child: Text(explain),
          ),
        ],
      ),
    );
  }
}
