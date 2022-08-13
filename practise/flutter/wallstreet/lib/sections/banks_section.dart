import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';
import '../widgets/title.dart';

class BankSection extends StatelessWidget {
  const BankSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleSection(
            heading: 'Bank Accounts',
            subHeading: 'Bank Accounts Tagline Goes here'),
        Container(
          padding: const EdgeInsets.only(left: 100, right: 100),
          child: GridView.builder(
              itemCount: banks.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).orientation ==
                          Orientation.landscape
                      ? 3
                      : 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 100 / 50),
              itemBuilder: (context, position) {
                return Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      banks[position],
                    ));
              }),
        ),
      ],
    );
  }
}
