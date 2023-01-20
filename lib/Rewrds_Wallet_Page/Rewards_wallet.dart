import 'package:banking/Rewrds_Wallet_Page/topBoxRefactored.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Doted Row/dotedRow.dart';

class Rewrds_Wallet extends StatefulWidget {
  const Rewrds_Wallet({super.key});

  @override
  State<Rewrds_Wallet> createState() => _Rewrds_WalletState();
}

class _Rewrds_WalletState extends State<Rewrds_Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.jpg'), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 30,
                  ),
                  Text(
                    'Rewards Wallet',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TopContainer(),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: Color.fromARGB(179, 240, 243, 250),
                        constraints: BoxConstraints.expand(height: 50),
                        child: TabBar(
                          indicator: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromARGB(255, 61, 61, 165),
                                width: 3,
                              ),
                            ),
                          ),
                          unselectedLabelColor:
                              Color.fromARGB(255, 130, 130, 132),
                          labelColor: Color.fromARGB(255, 61, 61, 165),
                          indicatorColor: Color.fromARGB(255, 61, 61, 165),
                          tabs: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.gift,
                                  size: 15,
                                  color: Color.fromARGB(255, 61, 61, 165),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Tab(text: "Rewards"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.local_atm,
                                  color: Color.fromARGB(255, 130, 130, 132),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Tab(text: "Rewards"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      DotedFinal(),
                      SizedBox(height: 25),
                      Expanded(
                        child: TabBarView(
                          children: [
                            ListView.separated(
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 5,
                                        ),
                                        child: ListTile(
                                          leading: Text(
                                            '${index * 12}',
                                            style: TextStyle(
                                              fontSize: 28,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 60, 98, 212),
                                            ),
                                          ),
                                          trailing: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "Valid Till",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                              Text(
                                                "jan ${index * 2 + 4},2023",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ],
                                          ),
                                          title: Text(
                                            "Order ID - 1050855${index + 15}",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return Container(
                                    height: 10,
                                  );
                                }),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(90),
                                child: Image.asset("images/bg.png"),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
