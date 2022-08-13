import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';

class FooterSubHeading extends StatelessWidget {
  const FooterSubHeading({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: white, fontSize: 14, height: 2, fontWeight: FontWeight.w100),
    );
  }
}
