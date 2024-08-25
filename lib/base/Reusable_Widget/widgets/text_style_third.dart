import 'package:flutter/material.dart';
import 'package:ticket_app/base/Reusable_Widget/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  const TextStyleThird({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text, style: HeadlineStyles.headlineStyle2.copyWith(color: Colors.white,
    ));
  }
}