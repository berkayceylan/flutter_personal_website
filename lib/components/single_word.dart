import 'package:flutter/material.dart';

class SingleWord extends StatelessWidget {
  final String word;
  final Color color;

  const SingleWord({super.key, required this.word, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: SelectableText(
        word,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}