import 'package:flutter/material.dart';

class DemoPage1 extends StatelessWidget {
  const DemoPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.purple,
      child: Center(
          child: Text(
        'Home Page Demo',
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
      )),
    );
  }
}

class DemoPage2 extends StatelessWidget {
  const DemoPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 62, 20, 122),
      child: Center(
          child: Text(
        'Work Page Demo',
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
      )),
    );
  }
}
