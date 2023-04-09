

import 'package:flutter/material.dart';
import 'package:football/constants/images.dart';
import 'package:football/main.dart';
import 'package:football/widgets/imageicon.dart';
import 'package:football/widgets/whiteText.dart';

class AppBarTop extends StatelessWidget {
  const AppBarTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      child: Row(
        
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageIconWidget(imgPath: Images.appbarIcons[0], size: 36,),
          ),
          WhiteText("Score Board"),
          Spacer(),
          ImageIconWidget(imgPath: Images.appbarIcons[1], size: 40,),
          ImageIconWidget(imgPath: Images.appbarIcons[2], size: 40,),

        ],
      ),
    );
  }
}