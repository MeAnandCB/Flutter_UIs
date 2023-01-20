import 'package:banking/Demo_Pages/DemoPages.dart';
import 'package:banking/profilePage/ProfilePage.dart';
import 'package:flutter/material.dart';

import '../Rewrds_Wallet_Page/Rewards_wallet.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<BottomBar> {
  int pageIndex = 0;

  final pages = [
    DemoPage1(),
    DemoPage2(),
    Rewrds_Wallet(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 211, 208, 208)),
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                      Icons.home_filled,
                      color: Color.fromARGB(255, 38, 25, 123),
                      size: 30,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Color.fromARGB(255, 168, 164, 164),
                      size: 30,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                      Icons.work_rounded,
                      color: Color.fromARGB(255, 38, 25, 123),
                      size: 30,
                    )
                  : const Icon(
                      Icons.work_outline_outlined,
                      color: Color.fromARGB(255, 168, 164, 164),
                      size: 30,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                      Icons.widgets_rounded,
                      color: Color.fromARGB(255, 38, 25, 123),
                      size: 30,
                    )
                  : const Icon(
                      Icons.widgets_outlined,
                      color: Color.fromARGB(255, 168, 164, 164),
                      size: 30,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 38, 25, 123),
                      size: 30,
                    )
                  : const Icon(
                      Icons.person_outline,
                      color: Color.fromARGB(255, 168, 164, 164),
                      size: 30,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
