import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';

class HeaderBottomButton extends StatelessWidget {
  const HeaderBottomButton({Key? key, required this.title, required this.color})
      : super(key: key);
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      color: color,
      child: Text(
        title,
        style: const TextStyle(
            color: white, fontSize: 15, fontWeight: FontWeight.w400),
      ),
    );
  }
}
