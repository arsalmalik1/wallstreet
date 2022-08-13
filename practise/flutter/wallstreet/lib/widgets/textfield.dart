import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';

class Textfield extends StatelessWidget {
  const Textfield(
      {Key? key, required this.hint, this.maxLine = 1, this.filled = false})
      : super(key: key);
  final String? hint;
  final int? maxLine;
  final bool filled;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: white, ),
      maxLines: maxLine,
      decoration: InputDecoration(
        filled: filled,
        fillColor: white,
        contentPadding: const EdgeInsets.only(left: 10.0, top: 10),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          borderSide: BorderSide(width: 2, color: white),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          borderSide: BorderSide(width: 2, color: white),
        ),
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 10, color: Color(0xFFB3B1B1)),
      ),
      obscureText: false,
    );
  }
}
