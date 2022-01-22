import 'package:flutter/material.dart';
import 'package:simple_ui/models/static_data.dart';

class LoginInputField extends StatelessWidget {
  const LoginInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        InputWidget(hintText: "Email",),
        const SizedBox(height: defaultPadding/2,),
        InputWidget(hintText: "Password", obscureText: true,),
        const SizedBox(height: defaultPadding/2,),
        Padding(
          padding: const EdgeInsets.only(right: defaultPadding),
          child: TextButton(
              onPressed: (){},
              child: Text("Forget Password?",
                style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold),
              )
          ),
        )
      ],
    );
  }
}

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key? key, this.obscureText = false, required this.hintText,
  }) : super(key: key);

  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding/2),
          decoration: BoxDecoration(
              color: primaryColor,
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(12)
          ),
          child: TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
          )
      ),
    );
  }
}
