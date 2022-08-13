import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallstreet/constant.dart';
import 'package:wallstreet/widgets/header_bottom_button.dart';
import 'package:wallstreet/widgets/wrap.dart';

import '../responsive.dart';
import '../widgets/contact_item.dart';
import '../widgets/dropdown.dart';
import '../widgets/menu_item.dart';
import '../widgets/simple_button.dart';
import 'logo.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.margin}) : super(key: key);
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
          height: heright * 0.9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  if (!isMobile(context))
                    WrapWidget(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Logo(color: white),
                          Row(
                            children: [
                              const ContactItem(
                                icon: Icons.mail,
                                title: 'Email',
                                value: 'support@wallstreetinvest.ae',
                              ),
                              Container(
                                height: 50,
                                width: 1,
                                color: white,
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                              ),
                              const ContactItem(
                                icon: Icons.phone,
                                title: '24x7 online support',
                                value: '+971 54 592 0756',
                              ),
                              Container(
                                height: 50,
                                width: 1,
                                color: white,
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                              ),
                              const ContactItem(
                                icon: Icons.star,
                                title: 'Google Map',
                                value: '4.9/5.0',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      if (!isMobile(context))
                        Container(
                          color: primaryColor,
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(right: 20, left: 20),
                                child: Row(children: [
                                  Container(
                                    width: 15,
                                    height: 1,
                                    color: white,
                                    margin: const EdgeInsets.only(right: 10),
                                  ),
                                  const Text('Get a free qoute',
                                      style: TextStyle(
                                          color: white,
                                          fontWeight: FontWeight.w300))
                                ]),
                              ),
                              Container(
                                height: 50,
                                color: white,
                                child: Row(
                                  children: [
                                    NavItem(
                                      title: 'FREE ZONE',
                                      tapEvent: () {},
                                    ),
                                    NavItem(
                                      title: 'OFFSHORE',
                                      tapEvent: () {},
                                    ),
                                    NavItem(
                                      title: 'MAINLAND',
                                      tapEvent: () {},
                                    ),
                                    NavItem(
                                      title: 'PRO SERVICES',
                                      tapEvent: () {},
                                    ),
                                    NavItem(
                                      title: 'BANKS',
                                      tapEvent: () {},
                                    ),
                                    NavItem(
                                      title: 'OTHER SERVICES',
                                      tapEvent: () {},
                                    ),
                                    NavItem(
                                      title: 'CONTACT',
                                      tapEvent: () {},
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                                width: 50,
                                child: Icon(
                                  Icons.search,
                                  color: white,
                                ),
                              )
                            ],
                          ),
                        ),
                      if (isMobile(context))
                        IconButton(
                            icon: const Icon(Icons.menu),
                            onPressed: () {
                              Scaffold.of(context).openEndDrawer();
                            })
                    ],
                  ),
                ],
              ),
              const Text(
                'Let’s setup your business in Dubai \nand spread it to whole UAE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: white,
                  fontSize: 40,
                  height: 1.3,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const HeaderBottomButton(
                            title: 'Free Zone', color: black),
                        Container(
                          width: 1,
                          height: 40,
                          color: white,
                        ),
                        const HeaderBottomButton(
                            title: 'Offshore', color: primaryColor),
                        Container(
                          width: 1,
                          height: 40,
                          color: white,
                        ),
                        const HeaderBottomButton(
                            title: 'Mainland', color: primaryColor)
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width * 0.8,
                    color: primaryColor,
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DropDown(
                          dropdownValues: activity,
                        ),
                        DropDown(
                          dropdownValues: shareholders,
                        ),
                        DropDown(
                          dropdownValues: allocation,
                        ),
                        DropDown(
                          dropdownValues: emirates,
                        ),
                        SimpleButton(
                          onTap: () {},
                          title: 'Compare Prices',
                          primary: black,
                          secondary: white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
