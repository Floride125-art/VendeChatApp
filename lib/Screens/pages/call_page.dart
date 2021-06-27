import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:vendechat/config/themes/theme_config.dart';
// import 'package:vendechat/constants/language_constants.dart';
// import 'package:vendechat/utils/ui/drawer.dart';
// import 'package:vendechat/utils/ui/endDrawer.dart';
// import 'package:vendechat/widgets/call_section_menu.dart';
// import 'package:vendechat/widgets/mobile_call.view.dart';
// import 'package:vendechat/widgets/mobile_missed_call.view.dart';
class Phone extends StatefulWidget {
  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  bool isDarkMode = true;
  @override
  void initState() {
    super.initState();
    // getTheme();
  }

  // getTheme() async {
  //   SharedPreferences _prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     isDarkMode = _prefs.getString("theme") == "dark";
  //     _prefs.setString("Page", "Call");
  //   });
  // }

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return
     Scaffold(

      // key: _scaffoldKey,
      // floatingActionButton: CallSectionMenu(),
      // drawer: SafeArea(
      //   child: Theme(
      //     data: ThemeData(
      //       canvasColor:
      //           isDarkMode ? darkMode.canvasColor : lightMode.canvasColor,
      //     ),
      //     child: AppDrawer(),
      //   ),
      // ),
      // endDrawer: SafeArea(
      //   child: Theme(
      //     data: ThemeData(
      //       //
      //       canvasColor:
      //           isDarkMode ? darkMode.canvasColor : lightMode.canvasColor,
      //     ),
      //     child: EndDrawer(),
      //   ),
      // ),
      // backgroundColor:
      //     isDarkMode ? darkMode.backgroundColor : lightMode.backgroundColor,
      // body: Padding(
      //   padding: const EdgeInsets.only(top: 20),
      //   child: Column(
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.only(left: 10),
      //             child: Container(
      //               decoration: BoxDecoration(
      //                 shape: BoxShape.circle,
      //                 image: DecorationImage(
      //                   image: AssetImage(
      //                     'assets/images/dots.png',
      //                   ),
      //                   fit: BoxFit.cover,
      //                 ),
      //               ),
      //               child: MaterialButton(
      //                 minWidth: 0,
      //                 onPressed: () {
      //                   _scaffoldKey.currentState.openDrawer();
      //                 },
      //               ),
      //             ),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Container(
      //               child: Text(
      //                 getTranslated(context, 'call'),
      //                 style: GoogleFonts.montserratAlternates(
      //                   fontSize: 21,
      //                   fontWeight: FontWeight.bold,
      //                   color: isDarkMode
      //                       ? darkMode.textColor
      //                       : lightMode.textColor,
      //                 ),
      //               ),
      //             ),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.only(right: 10),
      //             child: Container(
      //               height: 80,
      //               width: 48,
      //               decoration: BoxDecoration(
      //                 border: Border.all(color: Color(0xff5FD3FF), width: 2),
      //                 shape: BoxShape.circle,
      //                 image: DecorationImage(
      //                   image: AssetImage(
      //                     'assets/images/fofo.jpg',
      //                   ),
      //                   fit: BoxFit.fill,
      //                 ),
      //               ),
      //               child: MaterialButton(
      //                 shape: CircleBorder(side: BorderSide.none),
      //                 minWidth: 0,
      //                 onPressed: () {
      //                   _scaffoldKey.currentState.openEndDrawer();
      //                 },
      //               ),
      //             ),
      //           )
      //         ],
      //       ),
      //       Container(

      //         child: Column(
      //           children: [
      //             MobileCallView(),
      //             MissedCallView(),
      //           ],
      //         )
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
