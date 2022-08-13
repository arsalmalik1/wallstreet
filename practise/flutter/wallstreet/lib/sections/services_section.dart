import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';
import '../desktop/service.dart';
import '../widgets/title.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleSection(
            heading: 'Our Services',
            subHeading: 'WE OFFSET GREAT SERVICE FOR OUR CUSTOMERS.'),
        Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              for (Map s in services)
                ServiceCard(
                  title: s['title'],
                  description: s['description'],
                  image: s['image'],
                  onPress: () {},
                ),
            ]),
      ],
    );
  }
}
