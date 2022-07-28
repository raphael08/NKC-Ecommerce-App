import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart';
import 'confimProduct.dart';

class bottomMenu extends StatefulWidget {
  const bottomMenu({Key? key}) : super(key: key);

  @override
  State<bottomMenu> createState() => _bottomMenuState();
}

class _bottomMenuState extends State<bottomMenu> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
    );
  }
}
