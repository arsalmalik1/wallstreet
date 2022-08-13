import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wallstreet/widgets/button.dart';
import 'package:wallstreet/widgets/textfield.dart';
import 'package:wallstreet/widgets/wrap.dart';

import '../constant.dart';
import '../widgets/about_user.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key, required this.margin}) : super(key: key);
  final double margin;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(left: margin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: primaryColor,
                      height: 2,
                      width: 15,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'Our Happy Clients',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: primaryColor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'What People say about us',
                  style: TextStyle(
                      color: black, fontSize: 30, fontWeight: FontWeight.w600),
                ),
                vSpace50,
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: const [
                      AboutUser(
                        title: 'ADVISER',
                        name: 'Adrew Jackson',
                        image: 'assets/about1.png',
                        about:
                            'Lorem ipsum dolor sit amet, con-sectetuer adipiscing elit, sed diamnonummy nibh euismod tinciduntut laoreet dolore magna aliquamerat volutpat. Ut wisi enim adminim veniam, quis nostrud exerci',
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      AboutUser(
                        title: 'CEO',
                        name: 'Amanda Pryor',
                        image: 'assets/about2.png',
                        about:
                            'Lorem ipsum dolor sit amet, con-sectetuer adipiscing elit, sed diamnonummy nibh euismod tinciduntut laoreet dolore magna aliquamerat volutpat. Ut wisi enim adminim veniam, quis nostrud exerci',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
      const SizedBox(
        width: 20,
      ),
      Expanded(
          flex: 1,
          child: Container(
            color: primaryColor,
            width: double.infinity,
            padding:
                EdgeInsets.only(right: margin, top: 60, left: 50, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Let's talk about improving your business",
                  style: TextStyle(
                      color: white, fontSize: 15, fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Textfield(
                  hint: 'Name',
                ),
                const SizedBox(
                  height: 10,
                ),
                const Textfield(
                  hint: 'Email',
                ),
                const SizedBox(
                  height: 10,
                ),
                const Textfield(
                  hint: 'Subject',
                ),
                const SizedBox(
                  height: 10,
                ),
                const Textfield(
                  hint: 'Message',
                  maxLine: 4,
                ),
                const SizedBox(
                  height: 10,
                ),
                Button(
                  title: 'Get a free qoute',
                  onTap: () {},
                )
              ],
            ),
          ))
    ]);
  }
}
