import 'package:flutter/material.dart';
import 'package:personal_website/utils/contants.dart';

class MedBox extends StatelessWidget {
  final String title, explain;
  const MedBox({Key? key, required this.title, required this.explain})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
      child: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.black,
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
