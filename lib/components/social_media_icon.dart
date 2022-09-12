import 'package:flutter/material.dart';
import 'package:personal_website/utils/contants.dart';

class SocialMediaIcon extends StatelessWidget {
  final Color iconColor;
  final IconData icon;
  const SocialMediaIcon({Key? key,  this.iconColor = kRedColor, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 35,
      color: iconColor,
    );
  }
}
