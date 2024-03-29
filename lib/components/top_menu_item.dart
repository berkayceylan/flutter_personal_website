import 'package:flutter/material.dart';
import 'package:personal_website/utils/constants.dart';

class TopMenuItem extends StatefulWidget {
  final String text;
  final TextAlign textAlign;
  final void Function()? onTap;
  const TopMenuItem({Key? key, this.text = "", this.textAlign = TextAlign.left, this.onTap})
      : super(key: key);

  @override
  State<TopMenuItem> createState() => _TopMenuItemState();
}

class _TopMenuItemState extends State<TopMenuItem> {
  bool _isHover = false;
  double _fontSize = 18;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLightBg,
      child: InkWell(

        onHover: (val) {
          setState(() {
            _isHover = val;
            _fontSize = widget.text.trim() == "" ? 18 : (_isHover ? 22 : 18);
          });
        },
        splashColor: Colors.amber,
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 400),
            style: TextStyle(
              color: kbgDarkColor,
              fontSize: _fontSize,
              fontWeight: FontWeight.bold,
            ),
            child: Text(
              widget.text,
              textAlign: widget.textAlign,
            ),
          ),
        ),
      ),
    );
  }
}
