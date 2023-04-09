import 'package:flutter/material.dart';
import 'package:football/constants/colors.dart';
import 'package:football/constants/globals.dart';
import 'package:football/main.dart';
import 'package:football/models/summaryItemModel.dart';
import 'package:football/widgets/whiteText.dart';

class SummayItemWidget extends StatelessWidget {
  final int i;
  final SummaryItemModel item;
  const SummayItemWidget(
    this.i,
    this.item, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconsize = 40;
    double boxH = 140;
    return Container(
      color: blk,
      width: w,
      height: boxH,
      child: Stack(fit: StackFit.expand, children: [
        if (i < summaryItemModelList.length-1)
          Positioned(
              left: w * 0.5 - 1,
              top: boxH * 0.5,
              child: Container(
                width: 2,
                height: boxH * 0.5,
                color: wht,
              )),
              if (i > 0)
          Positioned(
              left: w * 0.5 - 1,
              top: 0,
              child: Container(
                width: 2,
                height: boxH * 0.5,
                color: wht,
              )),
        Positioned(
            left: w * 0.5 - iconsize * 0.5,
            top: boxH * 0.5 - iconsize * 0.5,
            child: Container(
              width: iconsize,
              height: iconsize,
              decoration: BoxDecoration(
                // border: Border.all(color: gry),
                color: lightblk,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(item.img))),
            )),
          if(!item.right)  LeftSideSummaryItem(item: item,),
           if(item.right)  RightSideSummaryItem(item: item,)
      ]),
    );
  }
}


class LeftSideSummaryItem extends StatelessWidget { final SummaryItemModel item;
  const LeftSideSummaryItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double iconsize = 40;
    double boxH = 140;
    return Positioned(
      right: w*0.5+iconsize,
    
      child: Container(
        // width: w-iconsize-40,
      height: boxH,
      child: Align(alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WhiteText(item.time, color: green,fontsize: 18,),
           Container(alignment: Alignment.centerRight,
                        width:w*0.5-iconsize ,

            child: WhiteText(item.player, color: wht,fontsize: 22,)),
            WhiteText(item.goaltype , color: gry,fontsize: 16,),

        ],
      ),
      
      ),
      ),
    );
  }
}


class RightSideSummaryItem extends StatelessWidget { final SummaryItemModel item;
  const RightSideSummaryItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double iconsize = 40;
    double boxH = 140;
    return Positioned(
      left: w*0.5+iconsize,
    
      child: Container(
        // width: w-iconsize-40,
      height: boxH,
      child: Align(alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WhiteText(item.time, color: green,fontsize: 18,),
           Container(
            // constraints: BoxConstraints(
            //   maxWidth: w*0.5-iconsize-50
            // ),
            width:w*0.5-iconsize ,
            // color: Colors.green,
            child: WhiteText(item.player, color: wht,fontsize: 22,)),
            WhiteText(item.goaltype , color: gry,fontsize: 16,),

        ],
      ),
      
      ),
      ),
    );
  }
}
