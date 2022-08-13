import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../desktop/about_us.dart';
import '../mobile/about_mob.dart';
import '../responsive.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key, required this.margin}) : super(key: key);
  final double margin;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isDesktop(context)) AboutUs(margin: margin),
        if (isMobile(context) || isTab(context)) AboutMob(margin: margin),
      ],
    );
  }
}
