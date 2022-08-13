import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';
import '../widgets/title.dart';

class DepartmentSection extends StatelessWidget {
  const DepartmentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleSection(
            heading: 'Government Departments',
            subHeading: 'Government Departments Tagline Goes here'),
        GridView.count(
          crossAxisCount: 5,
          shrinkWrap: true, // use it
          children: List.generate(departments.length, (index) {
            return Image.asset(
              departments[index],
              height: 50,
            );
          }),
        ),
      ],
    );
  }
}
