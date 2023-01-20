import 'package:flutter/material.dart';

class ProfileBottomTile extends StatelessWidget {
  final String Content;
  final Icon icn;
  const ProfileBottomTile(
      {super.key, required this.Content, required this.icn});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255, 241, 239, 239),
            border: Border.all(color: Colors.white, width: 2)),
        child: ListTile(
          leading: icn,
          title: Text(
            Content,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 20,
          ),
        ),
      ),
    );
  }
}
