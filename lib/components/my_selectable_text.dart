class SelectableText extends StatelessWidget {
  final String number;

  const SelectableText({Key? key, required this.number})
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
        number,
        style: kphoneNumberTextStyle,
      ),
    );
  }
}