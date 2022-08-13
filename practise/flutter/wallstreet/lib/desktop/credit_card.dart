import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wallstreet/constant.dart';
import 'package:wallstreet/widgets/credit_card_first.dart';
import 'package:wallstreet/widgets/credit_card_second.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Row(
        children: const [
          Expanded(flex: 1, child: CreditCardFirst()),
          SizedBox(
            width: 20,
          ),
          Expanded(flex: 1, child: CreditCardSecond()),
        ],
      ),
    );
  }
}
