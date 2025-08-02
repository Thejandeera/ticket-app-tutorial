import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutbuilderWidget extends StatelessWidget {
  final int randomDevidor;
  final double width;
  const AppLayoutbuilderWidget({super.key, required this.randomDevidor, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // print("${(constraints.constrainWidth() / randomDevidor).floor()}");
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constraints.constrainWidth() / randomDevidor).floor(),
            (index) =>  SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}
