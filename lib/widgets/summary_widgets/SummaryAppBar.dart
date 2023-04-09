import 'package:flutter/material.dart';
import 'package:football/widgets/summary_widgets/circularIconButton.dart';
import 'package:football/widgets/whiteText.dart';

class SummaryAppBar extends StatelessWidget {
  const SummaryAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CirclularIconButton(
              iconData: Icons.arrow_back,
              ontap: () {
                Navigator.pop(context);
              }),
          WhiteText("Premier League"),
          CirclularIconButton(iconData: Icons.more_vert, ontap: () {}),
        ],
      ),
    );
  }
}
