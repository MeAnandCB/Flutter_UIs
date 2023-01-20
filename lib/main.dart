import 'package:banking/Second_Page/secondpage.dart';
import 'package:flutter/material.dart';
import 'HomePage/Homepage.dart';
import 'bottomnavigationbar/BottomNavigationBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (contex) => Homepage(),
          'Details': (context) => SecondScreen(),
          'Rewrds_Wallet': (context) => BottomBar()
        },
        home: Homepage());
  }
}
