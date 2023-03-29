import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
}

class PageStructure extends StatelessWidget {
  final List<Widget> children;
  const PageStructure({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ScrollConfiguration(
          behavior: MyCustomScrollBehavior(),
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: children
          ),
        ),
      ),
    );
  }
}


