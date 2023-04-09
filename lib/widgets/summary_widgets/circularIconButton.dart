import 'package:flutter/material.dart';

import 'package:football/constants/colors.dart';

class CirclularIconButton extends StatelessWidget {
  final IconData iconData;
  final Function ontap;
  const CirclularIconButton({
    Key? key,
    required this.iconData,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        foregroundColor: wht,
        radius: 26,
        backgroundColor: gry.withAlpha(80),
        child: IconButton(
          padding: EdgeInsets.zero,
            onPressed: () {
              ontap();
            },
            icon: Icon(iconData),
            iconSize: 26,
            ),
      ),
    );
  }
}
