import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.image,
      required this.onPress})
      : super(key: key);
  final String title, description, image;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      decoration: BoxDecoration(border: Border.all(color: secondaryColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 60,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: const TextStyle(
                color: primaryColor, fontWeight: FontWeight.w700, fontSize: 10),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: smallText,
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              onPress();
            },
            // ignore: sort_child_properties_last
            child: const Text(
              'Read More',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
            ),
            style: ElevatedButton.styleFrom(primary: black, onPrimary: white),
          ),
        ],
      ),
    );
  }
}
