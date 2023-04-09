

import 'package:flutter/material.dart';
import 'package:football/providers/data.dart';
import 'package:football/widgets/datewithDayRow.dart';
import 'package:football/widgets/imageicon.dart';
import 'package:football/widgets/whiteText.dart';
import 'package:provider/provider.dart';

class CalendarWithDate extends StatelessWidget {
  const CalendarWithDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {    Data d = Provider.of<Data>(context);

    return Container(
      padding: EdgeInsets.all(6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageIconWidget(imgPath:  "assets/bottomicons/Icon (1).png",size: 26,),
          WhiteText("Apr ${selectedDateIndex+1 },2023", fontsize: 16,)
        ],
      ),
    );
  }
}