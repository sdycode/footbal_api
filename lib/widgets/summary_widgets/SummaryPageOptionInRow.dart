import 'package:flutter/material.dart';
import 'package:football/constants/colors.dart';
import 'package:football/constants/globals.dart';
import 'package:football/main.dart';
import 'package:football/providers/data.dart';
import 'package:provider/provider.dart';

int selectedSummaryOption = 1;

class SummaryPageOptionInRow extends StatelessWidget {
  const SummaryPageOptionInRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Data d = Provider.of<Data>(context);

    return Container(
      height: 50,
      width: w,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: summaryOptions.length,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: RawChip(
              backgroundColor: selectedSummaryOption==i?pink:dblk.withAlpha(180),
              onPressed: () {
                selectedSummaryOption = i;
                d.updateUI();
              },
              label: Text(summaryOptions[i]),
            ),
          );
        },
      ),
    );
  }
}
