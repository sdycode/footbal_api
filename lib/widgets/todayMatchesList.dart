import 'package:flutter/material.dart';
import 'package:football/constants/globals.dart';
import 'package:football/widgets/todayMatchCard.dart';

class TodayMatchesList extends StatelessWidget {
  const TodayMatchesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: todayMatches.length,
        itemBuilder: (context, i) {
          return TodayMatchCard(matchModel: todayMatches[i]);
        },
      ),
    );
  }
}
