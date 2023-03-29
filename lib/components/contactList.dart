import 'package:flutter/material.dart';
import 'package:personal_website/utils/contants.dart';

class ContactList extends StatelessWidget {
  final String title, contact1, contact2;
  const ContactList({
    Key? key, required this.contact1, this.contact2 = "", required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: kboldText,
        ),
        const SizedBox(height: 10),
        SelectableContact(contact: contact1),
        contact2.isNotEmpty ?
        Column(
          children: [
            const SizedBox(height: 10),
            SelectableContact(contact: contact2),
          ],
        ):const SizedBox(),
        SizedBox(height: 10,),
      ],
    );
  }
}

class SelectableContact extends StatelessWidget {
  final String contact;

  const SelectableContact({Key? key, required this.contact})
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
        contact,
        style: kphoneNumberTextStyle,
      ),
    );
  }
}