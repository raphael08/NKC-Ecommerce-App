import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(225, 24, 19, 88),
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
