import 'package:flutter/material.dart';
import 'package:football/constants/colors.dart';
import 'package:football/models/teammodel.dart';
import 'package:football/widgets/ScoreAndTimeCard.dart';
import 'package:football/widgets/TeamNameWithIconVert.dart';
import 'package:football/widgets/whiteText.dart';

class LiveMatchCardElements extends StatelessWidget {  final List<TeamModel> myteams;

  const LiveMatchCardElements( this.myteams,{Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const WhiteText(
          "Stamford Bridge",
          fontsize: 23,
        ),
        const WhiteText(
          "Week 10",
          fontsize: 16,
          color: gry,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TeamNameWithIconVert(teamModel: myteams[0], i: 0),
            ScoreAndTimeCard(),
            TeamNameWithIconVert(teamModel: myteams[1], i: 1)
          ],
        )
      ],
    );
  }
}
