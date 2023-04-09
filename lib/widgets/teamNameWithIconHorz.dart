import 'package:flutter/material.dart';

import 'package:football/main.dart';
import 'package:football/models/teammodel.dart';
import 'package:football/widgets/imageicon.dart';
import 'package:football/widgets/whiteText.dart';

class TeamNameWithIconHorz extends StatelessWidget {
  final TeamModel teamModel;
  final bool left;
  const TeamNameWithIconHorz({
    Key? key,
    required this.teamModel,
    required this.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: w * 0.4-20, 
  
    child: Row(
      children: [
        if(left)ImageIconWidget(imgPath: teamModel.img, size: w*0.1,),SizedBox(width: 8,),
        Expanded(child: WhiteText(teamModel.teamname,fontsize: 16,)),  if(!left)ImageIconWidget(imgPath: teamModel.img, size: w*0.1,),
      ],
    ),
    );
  }
}
