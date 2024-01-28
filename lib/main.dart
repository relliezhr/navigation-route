import 'package:flutter/material.dart';
import 'package:nav_rute/pages/home_page.dart';
import 'package:nav_rute/pages/item_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: '/',
      routes: {'/': (context) => homePage(), '/item': (context) => itemPage()},
    ),
  );
}
