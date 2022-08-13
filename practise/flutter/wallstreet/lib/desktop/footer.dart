import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallstreet/constant.dart';
import 'package:wallstreet/widgets/button.dart';
import 'package:wallstreet/widgets/footer_heading.dart';
import 'package:wallstreet/widgets/footer_sub_heading.dart';
import 'package:wallstreet/widgets/textfield.dart';

import 'logo.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key, required this.margin}) : super(key: key);
  final double margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: primaryColor,
            padding: EdgeInsets.only(
                left: margin, right: margin, top: 50, bottom: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Logo(color: Colors.amber),
                        SizedBox(
                          height: 15,
                        ),
                        FooterSubHeading(
                          title:
                              'Churchill Executive Towers, Office No. 1007 Business Bay, Dubai – UAE',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FooterSubHeading(
                          title: '+971 54 592 0756',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FooterSubHeading(
                          title: '151 Walker Rd Ste 100 Dover, DE 1990 ,USA.',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FooterSubHeading(
                          title: '+1 559 426 3747',
                        ),
                      ],
                    )),
                hSpace50,
                Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const FooterHeading(title: 'POPULAR PRODUCTS'),
                        const SizedBox(
                          height: 15,
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: products.length,
                            itemBuilder: (context, index) {
                              return Container(
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom:
                                          BorderSide(width: 1.0, color: white),
                                    ),
                                  ),
                                  child: FooterSubHeading(
                                    title: products[index],
                                  ));
                            }),
                      ],
                    )),
                hSpace50,
                Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const FooterHeading(title: 'SIGN UP'),
                            const SizedBox(
                              height: 5,
                            ),
                            const FooterSubHeading(
                                title: 'To Get Latest Updates'),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const Expanded(
                                  child: Textfield(
                                    hint: 'Your email address',
                                    filled: true,
                                  ),
                                ),
                                Button(
                                  onTap: () {},
                                  title: 'Submit',
                                  primary: black,
                                  secondary: white,
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const FooterHeading(title: 'FOLLOW ON SOCIALS'),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 50,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: socials.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: const EdgeInsets.only(
                                          left: 5, right: 5),
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 1.0, color: white),
                                      ),
                                      child: Center(
                                        child: FaIcon(
                                          socials[index],
                                          color: white,
                                          size: 30,
                                        ),
                                      ),
                                    );
                                  }),
                            )
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 1,
            width: double.infinity,
          ),
          Container(
            color: primaryColor,
            width: double.infinity,
            padding: EdgeInsets.only(
                left: margin, right: margin, top: 50, bottom: 50),
            child: Column(
              children: const [
                Text(
                  '© 2021 Wall Street Investment & Commercial',
                  style: TextStyle(color: white, fontSize: 12),
                ),
                Text(
                  'Brokerage, Dubai, United Arab Emirates. All rights reserved.',
                  style: TextStyle(color: white, fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
