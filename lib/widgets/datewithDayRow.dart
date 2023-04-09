import 'dart:math';

import 'package:flutter/material.dart';
import 'package:football/constants/colors.dart';
import 'package:football/main.dart';
import 'package:football/providers/data.dart';
import 'package:football/widgets/whiteText.dart';
import 'package:provider/provider.dart';

List<String> days = ["Sat", "Sun", "Mon", "Tue", "Wed", "Thu", "Fri"];
int selectedDateIndex = 8;

class DateWithDayRow extends StatelessWidget {
  const DateWithDayRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: 60,
      child: ListView.builder(
        controller: ScrollController(
            initialScrollOffset: selectedDateIndex * 58 - w * 0.4),
        scrollDirection: Axis.horizontal,
        itemCount: 30,
        itemBuilder: (context, i) {
          return DayAndDateWidget(i);
        },
      ),
    );
  }
}

class DayAndDateWidget extends StatelessWidget {
  final int i;
  const DayAndDateWidget(this.i, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Data d = Provider.of<Data>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          selectedDateIndex = i;
          d.updateUI();
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 4),
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: selectedDateIndex == i ? pink : null),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WhiteText(days[i % days.length],fontsize: 14,color: gry,),
              WhiteText((i + 1).toString(),fontsize: 16,)
            ],
          ),
        ),
      ),
    );
  }
}
