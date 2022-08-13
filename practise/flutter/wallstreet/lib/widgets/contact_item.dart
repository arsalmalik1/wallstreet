import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
  }) : super(key: key);
  final IconData icon;
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: primaryColor,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(color: primaryColor, fontSize: 10),
            ),
            Text(
              value,
              style: const TextStyle(
                  color: white, fontSize: 10, fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}
