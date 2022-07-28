import 'dart:async';

import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter/widgets.dart';
import 'package:nkc/newArrival.dart';
import 'Product_detail.dart';
import 'app/bottomNav.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'account.dart';
import 'settings.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      ["assets/images/1.png", "sneakers", 'TSH 12000'],
      ["assets/images/2.png", "sn", 'TSH 15000'],
      ["assets/images/3.png", "sn", 'TSH 20000'],
      ["assets/images/4.png", "fggfghg", 'TSH 45000'],
      ["assets/images/5.png", "hcscvvvchzx", 'TSH 70000'],
      ["assets/images/7.jpg", "ffw", 'TSH 65000'],
      ["assets/images/1.png", "sneakers", 'TSH 12000'],
      ["assets/images/2.png", "sn", 'TSH 15000'],
      ["assets/images/3.png", "sn", 'TSH 20000'],
      ["assets/images/4.png", "fggfghg", 'TSH 45000'],
      ["assets/images/5.png", "hcscvvvchzx", 'TSH 70000'],
      ["assets/images/7.jpg", "rfqwrfqw", 'TSH 65000'],
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
                  text: 'PRODUCT\n',
                  style: TextStyle(fontSize: 15),
                ),
                TextSpan(
                  text: '  In Dar',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        actions: [
          Badge(
              badgeContent: Text('3'),
              position: BadgePosition.topEnd(top: 1, end: 3),

              // animationType: BadgeAnimationType.fade,
              child: IconButton(
                icon: Icon(Icons.shopping_cart_outlined),
                tooltip: 'cart',
                onPressed: () {},
              ))
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          tooltip: 'back',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          ...items.map(
            (i) => InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductDetail()));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black12, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                elevation: 5.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Stack(children: <Widget>[
                    Container(
                      //constraints: BoxConstraints.expand(),
                      alignment: Alignment.topCenter,
                      width: double.infinity,
                      margin: EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 7.0, bottom: 40.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        child: Image.asset(
                          i[0],
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 50.0),
                      padding: EdgeInsets.only(top: 20.0, left: 10),
                      child: Text(i[1]),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 20.0),
                      padding: EdgeInsets.only(top: 10.0, left: 10),
                      child: Text(
                        i[2],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff044861),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.home,
                  size: 20, color: Colors.white),
              onPressed: () {},
            ),
            // IconButton(
            //   icon: Icon(
            //     icon:FaIcon(FontAwesomeIcons.cartShopping),
            //     //Icons.shopping_cart_rounded,
            //     color: Colors.white,
            //   ),
            //   onPressed: () {},
            // ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.cartShopping,
                  size: 20, color: Colors.white),
              onPressed: () {},
            ),

            IconButton(
              icon: const FaIcon(FontAwesomeIcons.listCheck,
                  size: 20, color: Colors.white),
              onPressed: () {},
            ),

            IconButton(
              icon: const FaIcon(FontAwesomeIcons.user,
                  size: 20, color: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Account()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
