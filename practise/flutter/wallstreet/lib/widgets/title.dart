import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';

class TitleSection extends StatelessWidget {
  const TitleSection(
      {Key? key, required this.heading, required this.subHeading})
      : super(key: key);
  final String heading, subHeading;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(heading, style: bigText),
        const SizedBox(
          height: 10,
        ),
        Text(
          subHeading,
          style: smallText,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
