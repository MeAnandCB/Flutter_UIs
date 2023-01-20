import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    void _datepick() {
      showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2023));
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.jpg'), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 217, 216, 216),
                    ),
                    child: Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Select Invoice Date',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 59, 7, 122),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Eg : December 12,2022"),
                          InkWell(
                            onTap: () {
                              _datepick;
                            },
                            child: Container(
                              height: 50,
                              width: 70,
                              // color: Colors.amber,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(Icons.calendar_month),
                                  Icon(Icons.keyboard_arrow_down_outlined),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                      // child: TextField(
                      //   decoration: InputDecoration(
                      //       hintText: "Eg : December 12,2022",
                      //       enabledBorder: InputBorder.none),
                      // ),
                      ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Enter the Amount',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 59, 7, 122),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 5),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Eg :  2500",
                            enabledBorder: InputBorder.none),
                      ),
                    )),
                Expanded(child: SizedBox(height: 150)),
                Center(
                  child: Container(
                    height: 250,
                    width: 250,
                    child: Image.asset('images/phoneimage.png'),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_back_ios_new_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Back'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              'Rewrds_Wallet',
                            );
                          },
                          child: Container(
                            height: 50,
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
                                  'Submit',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.task_alt_outlined,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
