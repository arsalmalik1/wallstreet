import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wallstreet/widgets/textfield.dart';
import 'package:wallstreet/widgets/wrap.dart';

import '../constant.dart';
import '../widgets/about_user.dart';
import '../widgets/button.dart';

class AboutMob extends StatelessWidget {
  const AboutMob({Key? key, required this.margin}) : super(key: key);
  final double margin;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: margin, right: margin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    color: primaryColor,
                    height: 2,
                    width: 15,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'Our Happy Clients',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: primaryColor),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'What People say about us',
                style: TextStyle(
                    color: black, fontSize: 30, fontWeight: FontWeight.w600),
              ),
              vSpace50,
              CarouselSlider.builder(
                itemCount: aboutUser.length,
                itemBuilder: (BuildContext context, int itemIndex, int i) =>
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: AboutUser(
                          title: aboutUser[i]['title'],
                          name: aboutUser[i]['name'],
                          image: aboutUser[i]['image'],
                          about: aboutUser[i]['about'],
                        )),
                options: CarouselOptions(
                  viewportFraction: 0.65,
                  height: 300,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  enableInfiniteScroll: false,
                ),
              )
            ],
          ),
        ),
        Container(
          color: primaryColor,
          width: double.infinity,
          padding:
              EdgeInsets.only(right: margin, top: 30, left: margin, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Let's talk about improving your business",
                style: TextStyle(
                    color: white, fontSize: 15, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 10,
              ),
              const Textfield(
                hint: 'Name',
              ),
              const SizedBox(
                height: 10,
              ),
              const Textfield(
                hint: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              const Textfield(
                hint: 'Subject',
              ),
              const SizedBox(
                height: 10,
              ),
              const Textfield(
                hint: 'Message',
                maxLine: 4,
              ),
              const SizedBox(
                height: 10,
              ),
              Button(
                title: 'Get a free qoute',
                onTap: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}
