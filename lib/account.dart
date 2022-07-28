import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'settings.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  text: 'ACCOUNT',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            tooltip: 'settings',
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          tooltip: 'back',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 70, top: 50),
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color.fromARGB(28, 52, 106, 124)),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 70, top: 70),
            width: 250,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color.fromARGB(255, 52, 106, 124)),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 70, top: 90),
            width: 250,
            height: 150,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/7.jpg'),
                radius: 100),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black12),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 70),
            alignment: Alignment.center,
            child: Text(
              'Raphael Mkilya',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.only(top: 360),
            child: Card(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              elevation: 2.0,
              child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.person_outline_outlined, size: 30),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Edit Profile",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   width: 197,
                          // ),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.list_alt_outlined, size: 30),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Order History",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   width: 180,
                          // ),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.contact_page_outlined, size: 30),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "About Us",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   width: 205,
                          // ),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.whatsapp_outlined, size: 30),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Contact Us",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   width: 195,
                          // ),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.logout_outlined, size: 30),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Log Out",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  )),
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
