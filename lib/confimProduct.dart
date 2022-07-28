import 'dart:async';
//import 'package:share_plus/share_plus.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter/widgets.dart';
import 'package:nkc/newArrival.dart';
import 'package:nkc/product_List.dart';
import 'package:share/share.dart';
import 'Product_detail.dart';
import 'app/bottomNav.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'account.dart';
import 'settings.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

Color inactiveColor = Color.fromARGB(255, 245, 244, 241);

Color activeColor = Color(0xff044861);

var img1 = "assets/images/1.png";
var img2 = "assets/images/3.png";
var img3 = "assets/images/7.png";
enum Colour {
  gold,
  silver,
  bronze,
}

class ConfirmProduct extends StatefulWidget {
  const ConfirmProduct({Key? key}) : super(key: key);

  @override
  State<ConfirmProduct> createState() => _ConfirmProductState();
}

class _ConfirmProductState extends State<ConfirmProduct> {
  int _number = 0;

  void add() {
    setState(() {
      _number++;
    });
  }

  void minus() {
    setState(() {
      if (_number != 0) {
        _number--;
      }
    });
  }

  final items = [
    ["assets/images/1.png"],
    ["assets/images/2.png"],
    ["assets/images/3.png"],
    ["assets/images/4.png"],
    ["assets/images/5.png"],
    ["assets/images/7.jpg"],
  ];

  Colour? selectedColour;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppBar(
              backgroundColor: Color(0xff044861),
              title: Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: 'NAME OF PRODUCT\n',
                        style: TextStyle(fontSize: 15),
                      ),
                      TextSpan(
                        text: '\t\t\tSNEAKERS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.share),
                  tooltip: 'Share',
                  onPressed: () {
                    Share.share('check out my website https://Ramo.com.com');
                  },
                ),
              ],
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                tooltip: 'back',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 75),
                  child: ImageSlideshow(
                    /// Width of the [ImageSlideshow].
                    width: double.infinity,

                    /// Height of the [ImageSlideshow].
                    height: 250,

                    /// The page to show when first creating the [ImageSlideshow].
                    initialPage: 0,

                    /// The color to paint the indicator.
                    indicatorColor: Colors.blue,

                    /// The color to paint behind th indicator.
                    indicatorBackgroundColor: Colors.grey,

                    /// The widgets to display in the [ImageSlideshow].
                    /// Add the sample image file into the images folder
                    children: [
                      ...items.map(
                        (i) => Image.asset(
                          i[0],
                          fit: BoxFit.fill,
                        ),
                      )
                    ],

                    /// Called whenever the page in the center of the viewport changes.
                    // onPageChanged: (value) {
                    //   print('Page changed: $value');
                    // },

                    /// Auto scroll interval.
                    /// Do not auto scroll with null or 0.
                    autoPlayInterval: 3000,

                    /// Loops back to first slide.
                    isLoop: true,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(2),
                  color: Color.fromARGB(167, 241, 237, 237),
                  width: double.infinity,
                  height: 100,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: '\n1000Tsh\n\n',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        TextSpan(
                          text:
                              'Lorem ipsum dolor sit amet, adipiscing elit. Mauris accumsan elit',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  //padding: EdgeInsets.all(10),
                  //margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  color: Color.fromARGB(167, 241, 237, 237),
                  width: double.infinity,
                  height: 200,
                  child: Stack(
                    children: [
                      Container(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: 'Estimated time of arrival: ',
                                style: TextStyle(fontSize: 15),
                              ),
                              TextSpan(
                                text: '20 th Apr',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 45, left: 100, right: 100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "20 Days",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              child: Text(
                                "20 Days",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 78, left: 55, right: 55),
                        color: Colors.grey,
                        height: 7,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 70, left: 50, right: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Icon(Icons.airplanemode_active,
                                  color: Colors.white),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                                //border: Border.all(color: Colors.black12),
                              ),
                            ),
                            Container(
                                child: Icon(Icons.location_on,
                                    color: Colors.white),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                  //border: Border.all(color: Colors.black12),
                                )),
                            Container(
                                child: Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                  //border: Border.all(color: Colors.black12),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 105, left: 37, right: 37),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Abroad",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Local warehouse",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              child: Text(
                                "You",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 145, left: 37, right: 37),
                        child: Text(
                          "The product will take 40 days to be transported and it’s arrival estimation is 20 th Apr",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  color: Color.fromARGB(167, 241, 237, 237),
                  width: double.infinity,
                  height: 60,
                  child: Container(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: 'Estimated price for transport: ',
                            style: TextStyle(fontSize: 15),
                          ),
                          TextSpan(
                            text: 'Tsh 5000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                color: Colors.black.withOpacity(0.8),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 400),
                      //color: Colors.white,
                      height: 900,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: Colors.white),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 350, left: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white),
                      height: 150,
                      width: 130,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image.asset(
                            'assets/images/7.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 400, left: 160),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "SNEAKERS",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 430, left: 160),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "1000 Tshs",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 460, left: 160),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Number of Product is $_number",
                        style: TextStyle(
                            fontSize: 20, color: Colors.red.withOpacity(0.5)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 520),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Select color",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 550),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            width: 90,
                            height: 30,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedColour == Colour.gold
                                  ? activeColor
                                  : inactiveColor,
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedColour = Colour.gold;
                                });
                              },
                              child: Text(
                                "Gold",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 90,
                            height: 30,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedColour == Colour.bronze
                                  ? activeColor
                                  : inactiveColor,
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedColour = Colour.bronze;
                                });
                              },
                              child: Text(
                                "Bronze",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 90,
                            height: 30,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedColour == Colour.silver
                                  ? activeColor
                                  : inactiveColor,
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  // _color2 = Colors.black;
                                  selectedColour = Colour.silver;
                                });
                              },
                              child: Text(
                                "Silver",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 620, left: 10),
                      child: Text(
                        "Amount you want to buy",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 650, left: 20),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            //color: Colors.grey,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(50, 158, 158, 158),
                                borderRadius: BorderRadius.circular(20)),
                            child: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 35,
                              ),
                              tooltip: 'add',
                              onPressed: add,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            child: Text(
                              '$_number',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.black,
                              ),
                              //textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 50,
                            //color: Colors.grey,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(50, 158, 158, 158),
                                borderRadius: BorderRadius.circular(20)),
                            child: IconButton(
                              icon: Icon(
                                Icons.remove,
                                color: Colors.black,
                                size: 35,
                              ),
                              tooltip: 'minus',
                              onPressed: minus,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //padding: EdgeInsets.all(15),
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 720, left: 10, right: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 730, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              "Total Amount",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                              //textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            child: Text(
                              "O Tsh",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              //textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 50,
                      margin: EdgeInsets.only(top: 760, left: 40, right: 40),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xff044861)),
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          "CONFIRM",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
