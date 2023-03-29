import 'package:flutter/material.dart';
import 'package:personal_website/utils/constants.dart';

class BlockTitle extends StatelessWidget {
  final String text, subText;
  final bool divider;
  const BlockTitle(
      {Key? key, required this.text, this.subText = "", this.divider = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        divider
            ? const Divider(
                height: 50,
              )
            : const SizedBox.shrink(),
        Text(
          text,
          style: kmainTitle,
          textAlign: TextAlign.center,
        ),
        Text(
          subText,
          style: const TextStyle(color: Colors.black45),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
