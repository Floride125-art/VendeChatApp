import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vendeapp/Screens/auth/login/login_page.dart';
import 'package:vendeapp/Screens/pages/business_admin.dart';
import 'package:vendeapp/Screens/pages/business_page.dart';
import 'package:vendeapp/Screens/pages/call_page.dart';
import 'package:vendeapp/Screens/pages/message_page.dart';
import 'package:vendeapp/Screens/pages/wallet.dart';

class Home extends StatefulWidget {
  final int selectedPage;
  const Home({Key? key, required this.selectedPage}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int messageNotifications = 2;
  int callNotifications = 2;
  int walletNotifications = 2;
  bool loggedIn = true;
  bool pageFromBody = true;
  bool isBusiness = false;
  int selectedpage = 1;
  final _pageOption = [
    Phone(),
    Message(),
    Business(),
    Wallet(),
  ];
  final _adminPageOption = [
    Phone(),
    Message(),
    BusinessAdmin(),
    Wallet(),
  ];

  @override
  Widget build(BuildContext context) {
    setState(() {
      selectedpage = pageFromBody ? widget.selectedPage : selectedpage;
    });
    return Scaffold(
      body: loggedIn
          ? isBusiness
              ? _adminPageOption[selectedpage]
              : _pageOption[selectedpage]
          : const LoginPage(),
      bottomNavigationBar: ConvexAppBar.badge(
          {
            1: messageNotifications > 0
                ? messageNotifications.toString()
                : null,
            0: callNotifications > 0 ? callNotifications.toString() : null,
            3: walletNotifications > 0 ? walletNotifications.toString() : null
          },
          elevation: 10,
          badgeTextColor: Colors.white,
          backgroundColor: Colors.white,
          badgeColor: Colors.red,
          badgeMargin: EdgeInsets.only(left: 30.0, bottom: 38.0),
          color: Colors.grey,
          style: TabStyle.textIn,
          curveSize: 80,
          height: 70,
          activeColor: Color(0xff5FD3FF),
          items: [
            TabItem(icon: Icons.phone, title: 'call'),
            TabItem(icon: Icons.message_rounded, title: 'message'),
            TabItem(icon: Icons.business, title: 'business'),
            TabItem(
                icon: Icons.account_balance_wallet_outlined, title: 'wallet'),
          ],
          initialActiveIndex: selectedpage, onTap: (int index) async {
        if (index == 2) {
          setState(() {
            loggedIn = true;
            selectedpage = index;
            pageFromBody = false;
          });
        } else {
          setState(() {
            loggedIn = true;
            selectedpage = index;
            pageFromBody = false;
          });
        }
      }),
    );
  }
}
