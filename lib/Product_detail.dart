import 'dart:async';

import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter/widgets.dart';
import 'package:nkc/confimProduct.dart';
import 'package:nkc/newArrival.dart';
import 'package:nkc/product_List.dart';
import 'app/bottomNav.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'account.dart';
import 'settings.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    final items = [
      ["assets/images/1.png"],
      ["assets/images/2.png"],
      ["assets/images/3.png"],
      ["assets/images/4.png"],
      ["assets/images/5.png"],
      ["assets/images/7.jpg"],
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            tooltip: 'Share',
            onPressed: () {},
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
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(10),
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                            child: Icon(Icons.location_on, color: Colors.white),
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
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff044861),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 92,
              color: Colors.grey,
              child: IconButton(
                icon: const FaIcon(FontAwesomeIcons.whatsapp,
                    size: 35, color: Colors.white),
                onPressed: () {},
              ),
            ),
            // IconButton(
            //   icon: Icon(
            //     icon:FaIcon(FontAwesomeIcons.cartShopping),
            //     //Icons.shopping_cart_rounded,
            //     color: Colors.white,
            //   ),
            //   onPressed: () {},
            // ),

            Container(
              width: 95,
              color: Colors.grey,
              child: Badge(
                badgeContent: Text('3'),
                position: BadgePosition.topEnd(top: 2, end: 15),

                // animationType: BadgeAnimationType.fade,
                child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.cartShopping,
                      size: 35, color: Colors.white),
                  onPressed: () {},
                ),
              ),
            ),

            Container(
              color: Color.fromARGB(190, 62, 118, 138),
              child: TextButton(
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  onPressed: () {}),
            ),
            // Container(
            //   //width: 100,
            //   color: Colors.grey,
            //   child: IconButton(
            //     icon: const FaIcon(FontAwesomeIcons.user,
            //         size: 20, color: Colors.white),
            //     onPressed: () {
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => Account()));
            //     },
            //   ),
            // ),
            Container(
              color: Color(0xff044861),
              child: TextButton(
                  child: Text(
                    "BUY NOW",
                    style: TextStyle(fontSize: 27, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfirmProduct()));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
