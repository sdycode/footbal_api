import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhiteText extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color color;
  const WhiteText(this.text, {Key? key, this.fontsize = 20, this.color=Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: fontsize),
    );
  }
}
