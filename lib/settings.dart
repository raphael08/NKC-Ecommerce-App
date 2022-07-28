import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
                    text: 'SETTINGS',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          // actions: [
          //   //Badge(
          //   // badgeContent: Text('3'),
          //   //position: BadgePosition.topEnd(top: 1, end: 3),

          //   // animationType: BadgeAnimationType.fade,
          //   IconButton(
          //     icon: Icon(Icons.settings),
          //     tooltip: 'settings',
          //     onPressed: () {},
          //   )
          // ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            tooltip: 'back',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 50,
              margin: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: Color.fromARGB(82, 190, 186, 186)),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Address Management',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(
                  //   width: 140,
                  // ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: Color.fromARGB(82, 190, 186, 186)),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Reset Password',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(
                  //   width: 190,
                  // ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: Color.fromARGB(82, 190, 186, 186)),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Language',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(
                  //   width: 240,
                  // ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: Color.fromARGB(82, 190, 186, 186)),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Notification',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(
                  //   width: 220,
                  // ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: Color.fromARGB(82, 190, 186, 186)),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Rate Us',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(
                  //   width: 250,
                  // ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  margin: EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(color: Color.fromARGB(82, 190, 186, 186)),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'LogOut',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.logout_outlined),
                    ],
                  ),
                )),
          ],
        ));
  }
}
