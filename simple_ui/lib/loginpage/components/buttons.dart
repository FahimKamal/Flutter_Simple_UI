import 'package:flutter/material.dart';
import 'package:simple_ui/homepage/homepage.dart';
import 'package:simple_ui/models/static_data.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { return const HomePage(); }));
        },
        child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple.withOpacity(0.3),
                    spreadRadius: 7,
                    blurRadius: 7,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(defaultPadding / 2)
            ),
            height: 50,
            child: Center(child: Text("Sign in",
              style: TextStyle(
                  color: Colors.grey[300],
                  fontWeight: FontWeight.bold
              ),
            ))
        ),
      ),
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key, required this.logoLink,
  }) : super(key: key);

  final String logoLink;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { return const HomePage(); }));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(defaultPadding / 2),
        child: Container(
          padding: const EdgeInsets.all(defaultPadding / 2),
          decoration: BoxDecoration(
              color: primaryColor,
              border: Border.all(color: Colors.white, width: 2)
          ),
          height: 80,
          child: Image.asset(logoLink),
        ),
      ),
    );
  }
}
