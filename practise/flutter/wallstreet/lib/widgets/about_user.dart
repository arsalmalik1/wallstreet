import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';

class AboutUser extends StatelessWidget {
  const AboutUser(
      {Key? key,
      required this.about,
      required this.name,
      required this.title,
      required this.image})
      : super(key: key);
  final String about, name, title, image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            color: white,
            child: Text(
              about,
              style: smallText,
            )),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(30), // Image radius
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: primaryColor),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  title,
                  style: const TextStyle(fontSize: 8, color: secondaryColor),
                ),
              ],
            )
          ],
        )
      ],
    ));
  }
}
