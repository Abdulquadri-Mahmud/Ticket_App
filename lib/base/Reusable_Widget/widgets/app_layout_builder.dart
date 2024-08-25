import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  const AppLayoutBuilder({super.key, required this.randomDivider});

  final int randomDivider;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      // print("${constraints.constrainWidth()}");
      
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate((constraints.constrainWidth() / randomDivider).floor(), (index) => const SizedBox(
            width: 3,
            height: 1,
              child: DecoratedBox(decoration: BoxDecoration(
                  color: Colors.white
                )
              ),
            )
          ),
        );
    });
  }
}