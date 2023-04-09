import 'package:flutter/material.dart';
import 'package:football/constants/globals.dart';
import 'package:football/main.dart';
import 'package:football/models/teammodel.dart';
import 'package:football/widgets/summary_widgets/SummayItemWidget.dart';

class SummaryItemsWidgetsList extends StatelessWidget {final List<TeamModel> myteams;
  const SummaryItemsWidgetsList( this.myteams,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: w,
        height: double.infinity,
        child: ListView.builder(
          itemCount: summaryItemModelList.length,
          itemBuilder: (context, i) => SummayItemWidget(i, summaryItemModelList[i]),),
      ),
    );
  }
}