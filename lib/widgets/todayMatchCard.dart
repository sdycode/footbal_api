import 'package:flutter/material.dart';
import 'package:football/constants/colors.dart';

import 'package:football/models/matchModel.dart';
import 'package:football/widgets/TimeChip.dart';
import 'package:football/widgets/teamNameWithIconHorz.dart';

class TodayMatchCard extends StatelessWidget {
  final MatchModel matchModel;
  const TodayMatchCard({
    Key? key,
    required this.matchModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(  padding: EdgeInsets.all(8),
    margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: lightblk
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TeamNameWithIconHorz(teamModel: matchModel.team1, left: false),
          TimeChip(time: matchModel.time),
        
          TeamNameWithIconHorz(teamModel: matchModel.team2, left: true)
        ],
      ),
    );
  }
}
