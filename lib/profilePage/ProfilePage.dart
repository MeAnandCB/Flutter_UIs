import 'package:flutter/material.dart';

import 'ProfileBottomList/ProfileBottomTile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new_rounded),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Account',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.jpg'), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 251, 251, 249),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.pinkvilla.com/imageresize/roshan-mathew-anurag-kashyap.jpg?width=752&t=pvorg')),
                          borderRadius: BorderRadius.circular(22),
                          color: Color.fromARGB(255, 21, 20, 17),
                          border: Border.all(
                              color: Color.fromARGB(255, 228, 225, 225),
                              width: 4),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Dennis Callis",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mail_outline,
                            size: 15,
                            color: Color.fromARGB(255, 29, 38, 119),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "DennisCallisMail@gmail.com",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mobile_screen_share_sharp,
                            size: 15,
                            color: Color.fromARGB(255, 29, 38, 119),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "+91 78462940575",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [Colors.purple, Colors.blue],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Edit Profile',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    ProfileBottomTile(
                        icn: Icon(
                          Icons.wallet,
                          color: Color.fromARGB(255, 92, 39, 176),
                        ),
                        Content: "Wallet"),
                    ProfileBottomTile(
                        icn: Icon(
                          Icons.terminal_sharp,
                          color: Color.fromARGB(255, 92, 39, 176),
                        ),
                        Content: "Terms & policies"),
                    ProfileBottomTile(
                        icn: Icon(
                          Icons.adobe_outlined,
                          color: Color.fromARGB(255, 92, 39, 176),
                        ),
                        Content: "About"),
                    ProfileBottomTile(
                        icn: Icon(
                          Icons.logout,
                          color: Color.fromARGB(255, 92, 39, 176),
                        ),
                        Content: "Logout"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
