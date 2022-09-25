// ignore_for_file: prefer_const_constructors

import 'package:codeschool_login_page/tools/alltools.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(23.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                backButton(context),
                SizedBox(height: 30),
                SizedBox(
                  width: 300,
                  height: 150,
                  child: Text(
                    'Welcome back! Glad to see you, Again!',
                    style: urbanist7(32, 'urbanist'),
                  ),
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    GreyButton(label: 'Username'),
                    GreyButton(label: 'Email'),
                    GreyButton(label: 'Password', secure: true),
                    GreyButton(label: 'Confirm Password', secure: true)
                  ],
                ),
                Column(
                  children: [
                    BlackButton(
                      name: 'Login',
                      call: () {},
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: const [
                        Divider(),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: Text(
                            'Or Login with',
                            style: TextStyle(
                              fontFamily: 'urbanist-m',
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NewIcon(
                          icon: Icon(
                            Icons.facebook_sharp,
                            color: Colors.blue,
                            size: 40,
                          ),
                          onPressed: () {},
                        ),
                        NewIcon(
                          icon: Image.asset('img/google.png'),
                          onPressed: () {},
                        ),
                        NewIcon(
                          icon: Icon(
                            Icons.apple,
                            color: Colors.black,
                            size: 40,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextStyle urbanist7(double fontSize, String font) {
    return TextStyle(
      fontFamily: font,
      fontSize: fontSize,
    );
  }

  Container backButton(BuildContext context) {
    return Container(
      width: 41,
      height: 41,
      padding: EdgeInsets.only(left: 4),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Color.fromARGB(255, 232, 236, 244),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        color: Colors.black,
        hoverColor: Colors.white,
        splashColor: Colors.white,
        highlightColor: Colors.white,
        onPressed: () {
          Navigator.popAndPushNamed(context, '/');
        },
        style:
            ButtonStyle(minimumSize: MaterialStateProperty.all(Size(41, 41))),
        icon: Icon(Icons.arrow_back_ios),
      ),
    );
  }
}
