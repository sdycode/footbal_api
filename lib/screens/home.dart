import 'package:flutter/material.dart';
import 'package:football/constants/colors.dart';
import 'package:football/constants/images.dart';
import 'package:football/providers/data.dart';
import 'package:football/widgets/appBar.dart';
import 'package:football/widgets/bottomItem.dart';
import 'package:football/widgets/calendariconwithdate.dart';
import 'package:football/widgets/datewithDayRow.dart';
import 'package:football/widgets/imageicon.dart';
import 'package:football/widgets/liveMatchCard.dart';
import 'package:football/widgets/livematchesCarousel.dart';
import 'package:football/widgets/todayMatchesList.dart';
import 'package:football/widgets/todaymatchbar.dart';
import 'package:football/widgets/topPadding.dart';
import 'package:football/widgets/whiteText.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Data d = Provider.of<Data>(context);

    return Scaffold(
      backgroundColor: blk,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: blk,
        items: [
          bottom(0),
          bottom(1),
          bottom(2),
          bottom(3),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topPadding(context),
            const AppBarTop(),
            const CalendarWithDate(),
            const DateWithDayRow(),
            const SizedBox(
              height: 12,
            ),
            const WhiteText(
              "Live Match",
              fontsize: 22,
            ),
            const LiveMatchesCarousel(),
            const TodayMatchVar(),
            const TodayMatchesList(),
          ],
        ),
      ),
    );
  }
}
