import 'package:flutter/material.dart';
import 'package:simple_ui/models/static_data.dart';

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: defaultPadding),
      child: Text(
        text,
        style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
      ),
    );
  }
}