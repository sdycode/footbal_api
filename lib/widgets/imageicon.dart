import 'package:flutter/material.dart';

class ImageIconWidget extends StatelessWidget {
  final String imgPath;
  final double size;
  final double padding;
  // final Function onTap;

  const ImageIconWidget({Key? key, required this.imgPath, this.size = 30,
  this.padding=0

      //  required this.onTap
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      width: size,
      height: size,
      child: Image.asset(
        imgPath,
        fit: BoxFit.contain,
      ),
    );
  }
}
