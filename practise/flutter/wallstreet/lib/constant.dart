import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallstreet/widgets/credit_card_first.dart';
import 'package:wallstreet/widgets/credit_card_second.dart';

List<String> cards = [
  'card1.png',
  'card2.png',
  'card3.png',
  'card4.png',
  'card5.png'
];
List<String> choose = [
  "We provide 30 day money back satisfaction guarantee to all our clients.",
  "We provide 100% confidentiality to all our clients.",
  "We provide a dedicated account manager.",
  "We provide bank account opening assistance through our well-established banking relationships"
];

List info = [
  {
    'title': 'What we do?',
    'image': 'assets/info1.png',
    'number': '01',
    'description':
        'Lorem ipsum dolor sit amet, consec-tetuer adipiscing elit, sed diam nonum-my nibh euismod tincidunt ut laoreetdolore magna aliquam erat volutpat. Utwisi enim ad minim veniam, quis nostrudexerci tation ullamcorper suscipit lobor-tis nisl ut aliquip ex ea commodo conse-quat. Duis autem vel eum iriure dolor inhendrerit in vulputate velit esse molestieconsequat, vel illum dolore eu feugiatnulla facilisis at vero eros et accumsan'
  },
  {
    'title': 'How we do it?',
    'image': 'assets/info2.png',
    'number': '02',
    'description':
        'Lorem ipsum dolor sit amet, consec-tetuer adipiscing elit, sed diam nonum-my nibh euismod tincidunt ut laoreetdolore magna aliquam erat volutpat. Utwisi enim ad minim veniam, quis nostrudexerci tation ullamcorper suscipit lobor-tis nisl ut aliquip ex ea commodo conse-quat. Duis autem vel eum iriure dolor inhendrerit in vulputate velit esse molestieconsequat, vel illum dolore eu feugiatnulla facilisis at vero eros et accumsan'
  },
  {
    'title': 'Why choose us?',
    'image': 'assets/info3.png',
    'number': '03',
    'description':
        'Lorem ipsum dolor sit amet, consec-tetuer adipiscing elit, sed diam nonum-my nibh euismod tincidunt ut laoreetdolore magna aliquam erat volutpat. Utwisi enim ad minim veniam, quis nostrudexerci tation ullamcorper suscipit lobor-tis nisl ut aliquip ex ea commodo conse-quat. Duis autem vel eum iriure dolor inhendrerit in vulputate velit esse molestieconsequat, vel illum dolore eu feugiatnulla facilisis at vero eros et accumsan'
  },
];

List services = [
  {
    'title': 'BUSINESS SETUP SERVICES',
    'image': 'assets/service1.png',
    'description':
        'We assist in setting up all types of businesses including main land companies, free zone companies and off shore companies in Dubai, across the UAE and worldwide.'
  },
  {
    'title': 'LOCAL PARTNER SERVICES',
    'image': 'assets/service2.png',
    'description':
        'We assist in setting up all types of businesses including main land companies, free zone companies and off shore companies in Dubai, across the UAE and worldwide.'
  },
  {
    'title': 'PRO SERVICES',
    'image': 'assets/service3.png',
    'description':
        'We assist in setting up all types of businesses including main land companies, free zone companies and off shore companies in Dubai, across the UAE and worldwide.'
  },
  {
    'title': 'DOCUMENT CLEARING SERVICES',
    'image': 'assets/service4.png',
    'description':
        'We assist in setting up all types of businesses including main land companies, free zone companies and off shore companies in Dubai, across the UAE and worldwide.'
  },
  {
    'title': 'VAT REGISTRATION SERVICES',
    'image': 'assets/service5.png',
    'description':
        'We assist in setting up all types of businesses including main land companies, free zone companies and off shore companies in Dubai, across the UAE and worldwide.'
  },
  {
    'title': 'DOCUMENT TRANSLATION SERVICES',
    'image': 'assets/service6.png',
    'description':
        'We assist in setting up all types of businesses including main land companies, free zone companies and off shore companies in Dubai, across the UAE and worldwide.'
  },
];

List<String> departments = [
  'assets/department1.png',
  'assets/department2.png',
  'assets/department3.png',
  'assets/department4.png',
  'assets/department5.png',
  'assets/department6.png',
  'assets/department7.png',
  'assets/department8.png',
  'assets/department9.png',
  'assets/department10.png',
];
List<String> banks = [
  'assets/bank1.png',
  'assets/bank2.png',
  'assets/bank3.png',
  'assets/bank4.png',
  'assets/bank5.png',
  'assets/bank6.png',
];

List<String> products = [
  '• RAK Offshore',
  '• Jebel Ali Offshore',
  '• Ajman Offshore',
  '• Shams Free Zone',
  '• IFZA Free Zone',
  '• RAKEZ Free Zone',
  '• JAFZA Offshore'
];

List socials = [
  FontAwesomeIcons.twitter,
  FontAwesomeIcons.facebook,
  FontAwesomeIcons.instagram,
  FontAwesomeIcons.whatsapp
];

const vSpace50 = SizedBox(
  height: 50,
);
const vSpace20 = SizedBox(
  height: 20,
);
const vSpace5 = SizedBox(
  height: 5,
);
const hSpace50 = SizedBox(
  width: 50,
);

List<String> activity = ['select activity'];
List<String> shareholders = ['No. of shareholders'];
List<String> allocation = ['Visa Allocation'];
List<String> emirates = ['All Emirates'];

List aboutUser = [
  {
    'title': 'ADVISER',
    'name': 'Adrew Jackson',
    'image': 'assets/about1.png',
    'about':
        'Lorem ipsum dolor sit amet, con-sectetuer adipiscing elit, sed diamnonummy nibh euismod tinciduntut laoreet dolore magna aliquamerat volutpat. Ut wisi enim adminim veniam, quis nostrud exerci'
  },
  {
    'title': 'CEO',
    'name': 'Amanda Pryor',
    'image': 'assets/about2.png',
    'about':
        'Lorem ipsum dolor sit amet, con-sectetuer adipiscing elit, sed diamnonummy nibh euismod tinciduntut laoreet dolore magna aliquamerat volutpat. Ut wisi enim adminim veniam, quis nostrud exerci',
  }
];

List creditCard = [const CreditCardFirst(), const CreditCardSecond()];

//COLORS
const primaryColor = Colors.red;
const secondaryColor = Colors.grey;
const black = Colors.black;
const white = Colors.white;

//TEXTSTYLE
const smallText = TextStyle(color: secondaryColor, fontSize: 10);
const bigText =
    TextStyle(color: primaryColor, fontSize: 25, fontWeight: FontWeight.w600);
const copyright = '© 2021 Wall Street Investment & Commercial';
const reserved = 'Brokerage, Dubai, United Arab Emirates. All rights reserved.';
