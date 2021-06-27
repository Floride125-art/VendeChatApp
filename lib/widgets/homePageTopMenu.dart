import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vendeapp/Screens/pages/message_page.dart';

class HomeTopMenu extends StatefulWidget {
  @override
  _HomeTopMenuState createState() => _HomeTopMenuState();
}

class _HomeTopMenuState extends State<HomeTopMenu> {
  bool isDarkMode = false;
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Colors.grey.withOpacity(0.2)),
                  ),
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          margin: EdgeInsets.only(left: 5, top: 10),
                          child: Text(
                            'Shops',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Message()),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: Colors.grey.withOpacity(
                            0.2) //                   <--- border width here
                        ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        margin: EdgeInsets.only(left: 5, top: 10),
                        child: Text(
                          'Hospitals',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                  width: 1,
                  color: Colors.grey.withOpacity(
                      0.2) //                   <--- border width here
                  ),
            ),
            child: Column(
              children: [
                Container(
                  width: 80,
                  margin: EdgeInsets.only(left: 5, top: 10),
                  child: Text(
                    'Pharmacy',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey.withOpacity(0.2)),
            ),
            child: InkWell(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 80,
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                      'Shops',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Message()),
                );
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey.withOpacity(0.2)),
            ),
            child: Column(
              children: [
                Container(
                  width: 80,
                  margin: EdgeInsets.only(left: 5, top: 10),
                  child: Text(
                    'Hospitals',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
