import 'package:flutter/material.dart';
import 'package:football/constants/colors.dart';
import 'package:football/main.dart';

class BGImage extends StatelessWidget {
  const BGImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: 240,
      color: themePurple,
      child: Image.asset("assets/Mask Group.png", fit: BoxFit.contain,),
    );
  }
}