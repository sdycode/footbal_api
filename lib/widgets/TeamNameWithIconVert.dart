import 'package:flutter/material.dart';
import 'package:football/constants/colors.dart';
import 'package:football/models/teammodel.dart';
import 'package:football/widgets/imageicon.dart';
import 'package:football/widgets/whiteText.dart';

class TeamNameWithIconVert extends StatelessWidget {
  final TeamModel teamModel;
  final int i;
  const TeamNameWithIconVert({Key? key, required this.teamModel, required this.i})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ImageIconWidget(
            imgPath: teamModel.img,
            size: 80,
          ),
          WhiteText(teamModel.teamname),
          WhiteText(i%2==0?"Home":"Away", fontsize: 16,color: gry,)
        ],
      ),
    );
  }
}
