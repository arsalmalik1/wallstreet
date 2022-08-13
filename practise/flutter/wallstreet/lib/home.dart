import 'package:flutter/material.dart';
import 'package:wallstreet/constant.dart';
import 'package:wallstreet/sections/banks_section.dart';
import 'package:wallstreet/sections/credit_card_section.dart';
import 'package:wallstreet/sections/department_section.dart';
import 'package:wallstreet/sections/footer_section.dart';
import 'package:wallstreet/sections/header_section.dart';
import 'package:wallstreet/sections/info_section.dart';
import 'package:wallstreet/widgets/menu_drawer.dart';
import 'package:wallstreet/widgets/wrap.dart';

import 'sections/about_section.dart';
import 'sections/services_section.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double? margin;

  @override
  Widget build(BuildContext context) {
    margin = MediaQuery.of(context).size.width * 0.3 / 2;
    return Scaffold(
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(margin: margin!),
            WrapWidget(
              child: Column(
                children: const [
                  InfoSection(),
                  ServicesSection(),
                  vSpace50,
                  DepartmentSection(),
                  vSpace50,
                  BankSection(),
                  vSpace50
                ],
              ),
            ),
            AboutSection(margin: margin!),
            vSpace50,
            const CreditCardSection(),
            vSpace50,
            FooterSection(margin: margin!)
          ],
        ),
      ),
    );
  }
}
