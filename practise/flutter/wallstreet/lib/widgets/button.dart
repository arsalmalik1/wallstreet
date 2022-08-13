import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.onTap,
      required this.title,
      this.primary = white,
      this.secondary = primaryColor})
      : super(key: key);
  final Function onTap;
  final String title;
  final Color primary, secondary;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.only(left: 10, right: 10),
        color: primary,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: secondary,
                width: 15,
                height: 2,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: TextStyle(
                    color: secondary,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
