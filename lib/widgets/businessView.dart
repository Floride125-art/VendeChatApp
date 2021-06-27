import 'package:flutter/material.dart';

class MyBusiness extends StatefulWidget {
  @override
  _MyBusinessState createState() => _MyBusinessState();
}

var productname = [
  "Ladies dress",
  "Men's Jacket",
  "Night Service",
  "Rose Wines"
];
var productprice = ["\$ 130", "\$ 130", "\$ 130", "\$ 130"];
var productpictures = [
  'assets/images/image 19.png',
  'assets/images/image 20.png',
  'assets/images/image 26.png',
  'assets/images/image 27.png'
];

class _MyBusinessState extends State<MyBusiness> {
  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(viewportFraction: 0.5, initialPage: 0);
    List<Widget> products = [];
    for (int x = 0; x < productname.length; x++) {
      var business1 = Padding(
        padding: EdgeInsets.only(left: 10),
        child: Container(
            child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Image.asset(
                productpictures[x],
                fit: BoxFit.cover,
              ),
            ),
            Column(children: [
              Container(
                  padding: EdgeInsets.only(top: 20, right: 140),
                  child: InkWell(
                      child: Icon(
                        Icons.shopping_cart,
                        color: Color(0xff5FD3FF),
                        size: 20,
                      ),
                      onTap: () {})),
              Container(
                  padding: EdgeInsets.only(top: 10, right: 140),
                  child: InkWell(
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xff5FD3FF),
                        size: 20,
                      ),
                      onTap: () {})),
              Container(
                  padding: EdgeInsets.only(top: 10, right: 140),
                  child: InkWell(
                      child: Icon(
                        Icons.share,
                        color: Color(0xff5FD3FF),
                        size: 20,
                      ),
                      onTap: () {})),
            ]),
            Row(
              children: [
                SizedBox(width: 5),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.only(bottom: 10, right: 3),
                  child: Text(
                    productname[x],
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(width: 35),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    productprice[x],
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            )
          ],
        )),
      );
      products.add(business1);
    }
    return Container(
      width: 400,
      height: 140,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: products,
      ),
    );
  }
}

class MyBusiness1 extends StatefulWidget {
  @override
  _MyBusiness1State createState() => _MyBusiness1State();
}

var productname2 = [
  "Ladies dress",
  "Men's Jacket",
  "Night Service",
  "Rose Wines"
];
var productprice2 = ["\$ 130", "\$ 130", "\$ 130", "\$130"];
var productpictures2 = [
  'assets/images/image 19.png',
  'assets/images/image 20.png',
  'assets/images/image 26.png',
  'assets/images/image 27.png'
];

class _MyBusiness1State extends State<MyBusiness1> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    PageController controller =
        PageController(viewportFraction: 0.5, initialPage: 0);
    List<Widget> products = [];
    for (int x = 0; x < productname2.length; x++) {
      var business2 = Padding(
        padding: EdgeInsets.only(left: 10),
        child: Container(
            child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Image.asset(
                productpictures2[x],
                fit: BoxFit.cover,
              ),
            ),
            Column(children: [
              Container(
                  padding: EdgeInsets.only(top: 20, right: 140),
                  child: InkWell(
                      child: Icon(
                        Icons.shopping_cart,
                        color: Color(0xff5FD3FF),
                        size: 20,
                      ),
                      onTap: () {})),
              Container(
                  padding: EdgeInsets.only(top: 10, right: 140),
                  child: InkWell(
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xff5FD3FF),
                        size: 20,
                      ),
                      onTap: () {})),
              Container(
                  padding: EdgeInsets.only(top: 10, right: 140),
                  child: InkWell(
                      child: Icon(
                        Icons.share,
                        color: Color(0xff5FD3FF),
                        size: 20,
                      ),
                      onTap: () {})),
            ]),
            Row(
              children: [
                SizedBox(width: 5),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.only(bottom: 10, right: 3),
                  child: Text(
                    productname2[x],
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(width: 35),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    productprice2[x],
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            )
          ],
        )),
      );
      products.add(business2);
    }
    return Container(
      width: 400,
      height: 140,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: products,
      ),
    );
  }
}

class MyBusiness2 extends StatefulWidget {
  @override
  _MyBusiness2State createState() => _MyBusiness2State();
}

var productname3 = [
  "Ladies dress",
  "Men's Jacket",
  "Night Service",
  "Rose Wines"
];
var productprice3 = ["130", "130", "130", "130"];
var productpictures3 = [
  'assets/images/image 19.png',
  'assets/images/image 20.png',
  'assets/images/image 26.png',
  'assets/images/image 27.png'
];

class _MyBusiness2State extends State<MyBusiness2> {
  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(viewportFraction: 0.5, initialPage: 0);
    List<Widget> products = [];
    for (int x = 0; x < productname3.length; x++) {
      var business3 = Padding(
        padding: EdgeInsets.only(left: 10),
        child: Container(
            child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Image.asset(
                productpictures3[x],
                fit: BoxFit.cover,
              ),
            ),
            Column(children: [
              Container(
                  padding: EdgeInsets.only(top: 20, right: 140),
                  child: InkWell(
                      child: Icon(
                        Icons.shopping_cart,
                        color: Color(0xff5FD3FF),
                        size: 20,
                      ),
                      onTap: () {})),
              Container(
                  padding: EdgeInsets.only(top: 10, right: 140),
                  child: InkWell(
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xff5FD3FF),
                        size: 20,
                      ),
                      onTap: () {})),
              Container(
                  padding: EdgeInsets.only(top: 10, right: 140),
                  child: InkWell(
                      child: Icon(
                        Icons.share,
                        color: Color(0xff5FD3FF),
                        size: 20,
                      ),
                      onTap: () {})),
            ]),
            Row(
              children: [
                SizedBox(width: 10),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.only(bottom: 10, right: 3),
                  child: Text(
                    productname3[x],
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    productprice3[x],
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            )
          ],
        )),
      );
      products.add(business3);
    }
    return Container(
      width: 400,
      height: 140,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: products,
      ),
    );
  }
}
