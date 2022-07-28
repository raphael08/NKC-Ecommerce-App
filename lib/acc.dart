import 'package:flutter/material.dart';
//import 'package:nkc/square.dart';
import 'package:badges/badges.dart';

import 'bottomMenu.dart';

class Acc extends StatefulWidget {
  const Acc({Key? key}) : super(key: key);

  @override
  State<Acc> createState() => _AccState();
}

class _AccState extends State<Acc> {
  // This widget is the root of your application.
  List<String> _locations = ['A', 'B', 'C', 'D'];
  String _selectedLocation = 'A';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff044861),
          elevation: 2,
          title: const Center(child: Text('ADDRESS')),
          leading: IconButton(
              onPressed: () {
                //back to previous page
              },
              icon: const Icon(Icons.arrow_back)),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Badge(
                    badgeContent:
                        const Text('3', style: TextStyle(color: Colors.white)),
                    position: BadgePosition.topEnd(top: 1, end: 3),
                    child: IconButton(
                        onPressed: () {
                          //Go to cart
                        },
                        icon: const Icon(Icons.shopping_cart_outlined))))
          ],
        ),
        body: Column(
          children: [
            //const StepperWidget(),
            Container(
              height: 250,
              width: 350,
              color: const Color.fromARGB(255, 196, 196, 196),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Icon(
                      Icons.radio_button_checked_outlined,
                      color: Color(0xff044861),
                      size: 20,
                    ),
                  ),
                  const Text('Deliver to doorstep')
                ],
              ),
            ),
//Dropdown menu
            DropdownButton(
              hint: Text('Please choose a location'),
              value: _selectedLocation,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedLocation = newValue!;
                });
              },
              items: _locations.map((location) {
                return DropdownMenuItem(
                  child: new Text(location),
                  value: location,
                );
              }).toList(),
            ),
          ],
        ),
        bottomNavigationBar: bottomMenu(),
      ),
    );
  }
}
