import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';
import '../desktop/header.dart';
import '../mobile/header_mob.dart';
import '../responsive.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key, required this.margin}) : super(key: key);
  final double margin;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isDesktop(context))
          Header(
            margin: margin,
          ),
        if (isMobile(context) || isTab(context)) HeaderMob(margin: margin),
        if (isDesktop(context)) vSpace50,
      ],
    );
  }
}
