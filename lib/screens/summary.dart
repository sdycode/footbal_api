import 'package:flutter/material.dart';
import 'package:football/constants/colors.dart';
import 'package:football/constants/globals.dart';
import 'package:football/models/teammodel.dart';
import 'package:football/providers/data.dart';
import 'package:football/widgets/LiveMatchCardElements.dart';
import 'package:football/widgets/liveMatchCard.dart';
import 'package:football/widgets/summary_widgets/BGImage.dart';
import 'package:football/widgets/summary_widgets/SummaryAppBar.dart';
import 'package:football/widgets/summary_widgets/SummaryItemsWidgetsList.dart';
import 'package:football/widgets/summary_widgets/SummaryPageOptionInRow.dart';
import 'package:football/widgets/topPadding.dart';
import 'package:provider/provider.dart';

class SummaryPage extends StatelessWidget {final List<TeamModel> myteams;
  const SummaryPage(this.myteams, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {   Data d = Provider.of<Data>(context);
    return Scaffold(
      backgroundColor: blk,
      body: Stack(children: [
        BGImage(),
        Column(
          children: [
            topPadding(context),
            SummaryAppBar(),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: dblk),
              child: LiveMatchCardElements(myteams),
            ),
            SummaryPageOptionInRow(),
            SummaryItemsWidgetsList(myteams)
          ],
        )
      ]),
    );
  }
}
