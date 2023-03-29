import 'package:flutter/material.dart';
import 'package:personal_website/utils/contants.dart';

class ContactList extends StatelessWidget {
  final String contact1, contact2;
  const ContactList({
    Key? key, required this.contact1, required this.contact2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Phone Numbers:',
          style: kboldText,
        ),
        SizedBox(height: 10),
        SelectableContact(contact: contact1),
        SizedBox(height: 10),
        SelectableContact(contact: contact2),
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