import 'package:flutter/material.dart';

import 'package:football/constants/colors.dart';
import 'package:football/widgets/whiteText.dart';

class TimeChip extends StatelessWidget {
  final String time;
  const TimeChip({
    Key? key,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: green),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Center(
          child: WhiteText(
        time,
        color: green,
        fontsize: 14,
      )),
    );
  }
}
