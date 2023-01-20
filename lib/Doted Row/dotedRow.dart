import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DotedRowContainer extends StatelessWidget {
  const DotedRowContainer({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          DottedBorder(
            color: Colors.black,
            borderType: BorderType.RRect,
            radius: Radius.circular(12),
            strokeWidth: 1,
            child: Container(
              height: 25,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Text(name),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DotedFinal extends StatelessWidget {
  const DotedFinal({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DotedRowContainer(
          name: "All",
        ),
        DotedRowContainer(
          name: "Direct Rewards",
        ),
        DotedRowContainer(
          name: "Indirect Rewards",
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
