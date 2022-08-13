import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LogoMob extends StatelessWidget {
  const LogoMob({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/logo.png',
          height: 30,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          'WallStreet',
          style: TextStyle(
              color: color, fontSize: 15, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
