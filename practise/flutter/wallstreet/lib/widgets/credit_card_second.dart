import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';

class CreditCardSecond extends StatelessWidget {
  const CreditCardSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
      decoration: BoxDecoration(border: Border.all(color: secondaryColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'WHY CHOOSE WALLSTREET',
            style: TextStyle(
                color: black, fontSize: 15, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 15,
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: choose.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(2),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.done,
                        size: 12,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Text(
                          choose[index],
                          style: const TextStyle(
                            color: secondaryColor,
                            fontSize: 10,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }
}
