import 'package:flutter/material.dart';

class MyWrap extends StatelessWidget {
  final List<Widget> children;
  final double? maxWidth;
  const MyWrap({Key? key, required this.children, this.maxWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints:
            maxWidth == null ? null : BoxConstraints(maxWidth: maxWidth!),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 18.0, // gap between adjacent chips
          runSpacing: 15.0,
          children: children,
        ),
      ),
    );
  }
}
