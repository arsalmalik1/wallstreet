import 'package:flutter/material.dart';
import 'package:wallstreet/constant.dart';
import 'package:wallstreet/mobile/logo_mob.dart';
import 'package:wallstreet/widgets/button.dart';
import 'package:wallstreet/widgets/drawer_menu_item.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const LogoMob(color: Colors.amber),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: primaryColor,
                      ))
                ],
              ),
              vSpace20,
              const DrawerMenuItem(title: 'FREE ZONE'),
              const DrawerMenuItem(title: 'OFFSHORE'),
              const DrawerMenuItem(title: 'MAINLAND'),
              const DrawerMenuItem(title: 'PRO SERVICES'),
              const DrawerMenuItem(title: 'BANKS'),
              const DrawerMenuItem(title: 'OTHER SERVICES'),
              const DrawerMenuItem(title: 'CONTACT'),
              vSpace20,
              Button(
                primary: primaryColor,
                onTap: () {},
                title: 'Get a free qoute',
                secondary: white,
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2022 | Wall Street',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
