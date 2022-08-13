import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../desktop/credit_card.dart';
import '../mobile/credit_card_mob.dart';
import '../responsive.dart';
import '../widgets/wrap.dart';

class CreditCardSection extends StatelessWidget {
  const CreditCardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isDesktop(context) || isTab(context))
          const WrapWidget(child: CreditCard()),
        if (isMobile(context)) const CreditCardMob(),
      ],
    );
  }
}
