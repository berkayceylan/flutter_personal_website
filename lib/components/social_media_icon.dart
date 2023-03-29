import 'package:flutter/material.dart';
import 'package:personal_website/utils/constants.dart';
import 'dart:html' as html;
class SocialMediaIcon extends StatelessWidget {
  final Color iconColor;
  final IconData icon;
  final String url;
  const SocialMediaIcon({Key? key,  this.iconColor = kRedColor, required this.icon, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.open(url,"_blank");
      },
      child: Icon(
        icon,
        size: 35,
        color: iconColor,
      ),
    );
  }
}
