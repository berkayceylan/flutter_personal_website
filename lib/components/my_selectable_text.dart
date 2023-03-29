import 'package:flutter/material.dart';

class MySelectableText extends StatelessWidget {
  final String text;

  const MySelectableText({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: SelectableText(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}