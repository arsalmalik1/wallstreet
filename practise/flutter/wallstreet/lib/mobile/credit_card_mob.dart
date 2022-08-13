import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';

class CreditCardMob extends StatelessWidget {
  const CreditCardMob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return CarouselSlider.builder(
      itemCount: creditCard.length,
      itemBuilder: (BuildContext context, int itemIndex, int i) => Container(
          height: 170,
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: creditCard[i]),
      options: CarouselOptions(
        viewportFraction: 0.70,
        height: 200,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        enlargeCenterPage: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        enableInfiniteScroll: false,
      ),
    );
  }
}
