import 'package:flutter/material.dart';
import 'package:simple_ui/models/static_data.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 2,
            indent: defaultPadding,
            endIndent: defaultPadding / 2,
          ),
        ),
        Text(text),
        const Expanded(
          child: Divider(
            thickness: 2,
            indent: defaultPadding / 2,
            endIndent: defaultPadding,
          ),
        ),
      ],
    );
  }
}