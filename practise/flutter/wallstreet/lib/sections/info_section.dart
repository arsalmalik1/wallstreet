import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';
import '../desktop/info.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            for (Map i in info)
              InfoCard(
                  image: i['image'],
                  description: i['description'],
                  number: i['number'],
                  title: i['title'])
          ],
        ),
        vSpace50,
      ],
    );
  }
}
