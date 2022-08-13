import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';

class CreditCardFirst extends StatelessWidget {
  const CreditCardFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 25),
      decoration: BoxDecoration(border: Border.all(color: secondaryColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'WE ACCEPT',
                style: TextStyle(
                    color: black, fontSize: 15, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'We accept the following credit cards. Our website is secured with SSL 256 Bit Encryption.',
                style: smallText,
              ),
            ],
          ),
          Container(
            height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(3),
                    width: 40,
                    // height: 20,
                    child: Image.asset('assets/${cards[index]}'),
                  );
                }),
          )
        ],
      ),
    );
  }
}
