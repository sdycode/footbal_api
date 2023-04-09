import 'package:flutter/material.dart';
import 'package:football/constants/colors.dart';
import 'package:football/constants/globals.dart';
import 'package:football/main.dart';
import 'package:football/models/teammodel.dart';
import 'package:football/screens/summary.dart';
import 'package:football/widgets/LiveMatchCardElements.dart';
import 'package:football/widgets/ScoreAndTimeCard.dart';
import 'package:football/widgets/TeamNameWithIconVert.dart';
import 'package:football/widgets/whiteText.dart';

class LiveMatchCard extends StatelessWidget {
  final List<TeamModel> myteams;
  const LiveMatchCard(this.myteams, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        width: w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: themePurple,
            image: const DecorationImage(
                image: AssetImage("assets/Mask Group.png"),
                fit: BoxFit.contain)),
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SummaryPage(myteams),
                  ));
            },
            child: LiveMatchCardElements(myteams)));
  }
}
