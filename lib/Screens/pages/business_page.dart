import 'package:flutter/material.dart';
import 'package:vendeapp/widgets/businessView.dart';
import 'package:vendeapp/widgets/homePageTopMenu.dart';
import 'package:vendeapp/widgets/homepagebars.dart';
import 'package:vendeapp/widgets/searchBusiness.dart';

class Business extends StatefulWidget {
  const Business({Key? key}) : super(key: key);

  @override
  _BusinessState createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 80),
            child: Expanded(
              child: Column(
                children: [
                  HomePageStatus(),
                  SizedBox(
                    height: 10,
                  ),
                  HomeTopMenu(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    CircleAvatar(
                                      maxRadius: 25,
                                      backgroundImage: AssetImage(
                                        ("assets/images/ra.jpg"),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'J-Shops',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Container(
                                      alignment: Alignment.bottomRight,
                                      child: InkWell(
                                        child: Icon(
                                          Icons.thumb_up,
                                          color: Colors.grey,
                                          size: 25,
                                        ),
                                        onTap: () {},
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      alignment: Alignment.bottomRight,
                                      child: InkWell(
                                        child: Icon(
                                          Icons.notifications,
                                          color: Colors.grey,
                                          size: 30,
                                        ),
                                        onTap: () {},
                                      ),
                                    ),
                                  ],
                                ),
                                MyBusiness(),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    CircleAvatar(
                                      maxRadius: 25,
                                      backgroundImage: AssetImage(
                                        ("assets/images/ra.jpg"),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Hospital',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Container(
                                      alignment: Alignment.bottomRight,
                                      padding: EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        child: Icon(
                                          Icons.thumb_up,
                                          color: Colors.grey,
                                          size: 25,
                                        ),
                                        onTap: () {},
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      alignment: Alignment.bottomRight,
                                      padding: EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        child: Icon(
                                          Icons.notifications,
                                          color: Colors.grey,
                                          size: 30,
                                        ),
                                        onTap: () {},
                                      ),
                                    ),
                                  ],
                                ),
                                MyBusiness1(),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    CircleAvatar(
                                      maxRadius: 25,
                                      backgroundImage: AssetImage(
                                        ("assets/images/ra.jpg"),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Kabash-Shop',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Container(
                                      alignment: Alignment.bottomRight,
                                      padding: EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        child: Icon(
                                          Icons.thumb_up,
                                          color: Colors.grey,
                                          size: 25,
                                        ),
                                        onTap: () {},
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      alignment: Alignment.bottomRight,
                                      padding: EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        child: Icon(
                                          Icons.notifications,
                                          color: Colors.grey,
                                          size: 30,
                                        ),
                                        onTap: () {},
                                      ),
                                    ),
                                  ],
                                ),
                                MyBusiness2(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 17),
            child: SearchPage2(),
          ),
        ],
      ),
    );
  }
}
