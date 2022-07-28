import 'dart:async';

import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter/widgets.dart';
import 'package:nkc/newArrival.dart';
import 'package:nkc/product_List.dart';
//import 'product_details.dart';
import 'app/bottomNav.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'account.dart';
import 'settings.dart';

class SpashScreen extends StatelessWidget {
  const SpashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(),
      home: Spash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Spash extends StatefulWidget {
  const Spash({Key? key}) : super(key: key);

  @override
  State<Spash> createState() => _SpashState();
}

class _SpashState extends State<Spash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ProductList())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: Image(
        image: AssetImage('assets/images/SSS1.png'),
      ),
    );
  }
}
