import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/logo.png',
          height: 70,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          'WallStreet',
          style: TextStyle(
              color: color, fontSize: 20, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
