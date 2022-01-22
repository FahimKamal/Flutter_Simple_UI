import 'package:flutter/material.dart';
import 'package:simple_ui/models/static_data.dart';

import 'buttons.dart';

class SignUpOptions extends StatelessWidget {
  const SignUpOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          SignUpButton(logoLink: "assets/icons/002-google.png",),
          SignUpButton(logoLink: "assets/icons/004-nike.png",),
          SignUpButton(logoLink: "assets/icons/001-apple.png",),
        ],
      ),
    );
  }
}
