import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendeapp/models/statusImages.dart';

class HomePageStatus extends StatefulWidget {
  @override
  _HomePageStatusState createState() => _HomePageStatusState();
}

class _HomePageStatusState extends State<HomePageStatus> {
  List<StatusImages> statusImage = [
    StatusImages(
      statusA: 'assets/images/ra.jpg',
      statusB: 'assets/images/ra.jpg',
      statusC: 'assets/images/ra.jpg',
      statusD: 'assets/images/ra.jpg',
      statusE: "assets/images/ra.jpg",
      statusF: "assets/images/ra.jpg",
      statusG: "assets/images/ra.jpg",
      statusH: "assets/images/ra.jpg",
      statusI: "assets/images/ra.jpg",
      statusJ: "assets/images/ra.jpg",
    ),
  ];

  bool openDrawer = false;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.only(left: 5, top: 20),
      width: double.infinity,
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 32,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8),
            child: InkWell(
              child: CircleAvatar(
                maxRadius: 23,
                backgroundImage: AssetImage(statusImage[0].statusA),
              ),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ViewStatus()));
              },
            ),
          );
        },
      ),
    );
  }
}
