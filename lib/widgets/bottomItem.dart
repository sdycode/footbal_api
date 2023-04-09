import 'package:flutter/material.dart';
import 'package:football/constants/colors.dart';
import 'package:football/constants/images.dart';
import 'package:football/screens/home.dart';
import 'package:football/widgets/imageicon.dart';

// class BottomItem extends StatelessWidget {
//   final int i;
//   const BottomItem(this.i , {Key? key,}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    
//   }
// }
bottom(int i){
return BottomNavigationBarItem(
            backgroundColor: blk,
            label: "",
              icon: ImageIconWidget(
            imgPath: Images.bottomIcons[i],
          ));
}