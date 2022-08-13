import 'package:flutter/material.dart';
import 'package:wallstreet/constant.dart';
import 'logo_mob.dart';

class HeaderMob extends StatelessWidget {
  const HeaderMob({Key? key, required this.margin}) : super(key: key);
  final double margin;

  @override
  Widget build(BuildContext context) {
    double heright = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: heright * 0.9 - 45,
          child: Image.asset(
            'assets/bg.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
            width: double.infinity,
            height: heright * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            splashRadius: 10,
                            color: white,
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: const Icon(
                              Icons.sort,
                            ),
                          ),
                          const LogoMob(color: white),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.mail,
                            color: primaryColor,
                          ),
                          Container(
                            height: 10,
                            width: 1,
                            color: white,
                            margin: const EdgeInsets.only(left: 10, right: 10),
                          ),
                          const Icon(
                            Icons.phone,
                            color: primaryColor,
                          ),
                          Container(
                            height: 10,
                            width: 1,
                            color: white,
                            margin: const EdgeInsets.only(left: 10, right: 10),
                          ),
                          const Icon(
                            Icons.star,
                            color: primaryColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Let’s setup your business in Dubai \nand spread it to whole UAE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: white,
                    fontSize: 20,
                    height: 1.3,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container()
              ],
            )),
      ],
    );
  }
}
