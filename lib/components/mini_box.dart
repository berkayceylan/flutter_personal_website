import 'package:flutter/material.dart';

class MiniBox extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color bgColor;
  final Color? iconColor, textColor;

  const MiniBox({
    Key? key,
    required this.text,
    required this.icon,
    this.iconColor,
    this.textColor,
    this.bgColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: 20,
      padding: const EdgeInsets.all(30),

      backgroundColor: bgColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      avatar: Icon(
        icon,
        color: iconColor,
      ),
      //CircleAvatar
      label: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 5),
        child: Container(
          constraints: const BoxConstraints(minWidth: 72),
          child: Text(
            text,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold,),
          ),
        ),
      ), //Text
    );
  }
}
