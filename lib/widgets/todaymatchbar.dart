import 'package:flutter/material.dart';
import 'package:football/constants/colors.dart';
import 'package:football/constants/images.dart';
import 'package:football/main.dart';
import 'package:football/widgets/imageicon.dart';
import 'package:football/widgets/whiteText.dart';

class TodayMatchVar extends StatelessWidget {
  const TodayMatchVar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      child: Row(
        children: [
          ImageIconWidget(
            imgPath: "assets/today.png",
            padding: 8,
            size: 50,
          ),
          WhiteText("Today Match"),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                color: wht,
              ))
        ],
      ),
    );
  }
}
