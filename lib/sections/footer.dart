import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: Container(
        height: 50,
        color: Colors.grey[200],
        child: Center(
          child: Text(
            '© 2023 Berkay Ceylan. All rights reserved.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[500],
            ),
          ),
        ),
      ),
    );
  }
}
