import 'package:flutter/material.dart';
import 'package:personal_website/components/contactList.dart';

class Contact extends StatelessWidget {
  final String number1, number2, email;
  const Contact({Key? key, required this.number1, required this.number2, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          constraints: BoxConstraints(maxWidth: 600),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ContactList(
                title: "Phone Numbers:",
                contact1: "Turkish: $number1",
                contact2: "Czech: $number2",
              ),
            ],
          ),
        ),
        Container(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ContactList(
                title: "Email",
                contact1: email,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
