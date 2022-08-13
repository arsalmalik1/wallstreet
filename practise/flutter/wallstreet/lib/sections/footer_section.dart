import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../desktop/footer.dart';
import '../mobile/footer_mob.dart';
import '../responsive.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key, required this.margin}) : super(key: key);
  final double margin;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isDesktop(context)) Footer(margin: margin),
        if (isMobile(context) || isTab(context))
          FooterMob(
            margin: margin,
          )
      ],
    );
  }
}
