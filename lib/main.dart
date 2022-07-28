import 'package:flutter/material.dart';
import 'package:nkc/confimProduct.dart';
import 'package:nkc/home/home.dart';
import 'package:nkc/myapp.dart';
import 'package:nkc/newArrival.dart';
import 'package:nkc/splash.dart';
import 'Product_detail.dart';
import 'registration/login.dart';
import 'registration/register.dart';
import 'package:nkc/product_List.dart';
import 'account.dart';
import 'settings.dart';
import 'acc.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        'login': (context) => MyLogin(),
        'registration': (context) => Registration(),
        'product_list': (context) => ProductList(),
        'detail': (context) => ProductDetail(),
        'splash': (context) => SpashScreen(),
        'account': (context) => Account(),
        'settings': (context) => Settings(),
        'acc': (context) => Acc(),
        'arrival': (context) => NewArrival(),
        'confirm': (context) => ConfirmProduct()
      }));
}
