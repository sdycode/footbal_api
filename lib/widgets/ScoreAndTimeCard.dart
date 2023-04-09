
import 'package:flutter/material.dart';
import 'package:football/constants/colors.dart';
import 'package:football/constants/extensions.dart';
import 'package:football/main.dart';
import 'package:football/widgets/whiteText.dart';

class ScoreAndTimeCard extends StatelessWidget {
  const ScoreAndTimeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WhiteText("1:1", fontsize: 30,),
         box(12),
          Container(
            height: 30,
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              border: Border.all(color: green),
              borderRadius: BorderRadius.circular(15),
              
            ),
            child: Center(child: WhiteText("90+4", color: green, fontsize: 14,)),
          ),
        

      
        ],
      ),
    );
  }
}