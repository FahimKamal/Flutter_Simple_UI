import 'package:flutter/material.dart';
import 'package:simple_ui/homepage/homepage.dart';
import 'package:simple_ui/models/static_data.dart';

import 'components/divider_with_text.dart';
import 'components/login_input_field.dart';
import 'components/buttons.dart';
import 'components/signup_options.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 100,),
            Center(
              child: Text("DISCOVER A NEW PATH",
                style: TextStyle(
                  fontFamily: "Fjalla_One",
                  fontWeight: FontWeight.bold,
                  fontSize: 26
                )
              ),
            ),
            const SizedBox(height: 75,),
            LoginInputField(),
            const SizedBox(height: 75,),
            SignInButton(),
            const SizedBox(height: 75,),
            DividerWithText(text: "Or continue with",),
            const SizedBox(height: 75,),
            SignUpOptions(),
            const SizedBox(height: 75,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Not a member?"),
                TextButton(
                    onPressed: (){

                    },
                    child: const Text("Register now",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                )
              ],
            ),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}







