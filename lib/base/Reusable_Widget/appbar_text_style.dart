import 'package:flutter/material.dart';

class AppbarTextStyle extends StatelessWidget {
  const AppbarTextStyle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
    );
  }
}

class AppbarTextStyle2 extends StatelessWidget {
  const AppbarTextStyle2(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w700,
        color: Color(0xff3b3b3b),
      ),
    );
  }
}
