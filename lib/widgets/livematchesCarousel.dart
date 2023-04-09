import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:football/constants/globals.dart';
import 'package:football/widgets/liveMatchCard.dart';

class LiveMatchesCarousel extends StatelessWidget {
  const LiveMatchesCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
        
          itemCount: listOfMatches.length,
          itemBuilder: (context, i, realIndex) {
            return LiveMatchCard(listOfMatches[i]);
          },
          options: CarouselOptions(
            
            viewportFraction: 0.90,
              aspectRatio: 1.7, initialPage: 1, enableInfiniteScroll: false)),
    );
  }
}
