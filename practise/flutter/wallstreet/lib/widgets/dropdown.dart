import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';

class DropDown extends StatelessWidget {
  const DropDown({Key? key, required this.dropdownValues}) : super(key: key);
  final List dropdownValues;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          width: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0.0),
            color: white,
            border:
                Border.all(color: white, style: BorderStyle.solid, width: 0.80),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              items: dropdownValues
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      ))
                  .toList(),
              onChanged: (value) {},
              value: dropdownValues.first,
            ),
          ),
        ),
      ),
    );
  }
}
