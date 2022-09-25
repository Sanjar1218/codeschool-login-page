// ignore_for_file: prefer_const_constructors

import 'package:codeschool_login_page/tools/alltools.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(23.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            backButton(context),
            Text(
              'Welcome back! Glad to see you, Again!',
              style: urbanist7(30),
            ),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                    decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(50, 218, 218, 218),
                  label: Text(
                    'Enter your email',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Urbanist-m',
                      color: Color.fromARGB(100, 131, 145, 161),
                    ),
                  ),
                  border: OutlineInputBorder(),
                )),
                SizedBox(height: 15),
                TextField(
                    decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(50, 218, 218, 218),
                  label: Text(
                    'Enter your password',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Urbanist-m',
                      color: Color.fromARGB(100, 131, 145, 161),
                    ),
                  ),
                  border: OutlineInputBorder(),
                )),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 106, 112, 124),
                    ),
                  ),
                )
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
                      icon: Icon(
                        Icons.facebook_sharp,
                        color: Colors.blue,
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                    NewIcon(
                      icon: Icon(
                        Icons.facebook_sharp,
                        color: Colors.blue,
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an acount?',
                  style: urbanist7(15),
                ),
                TextButton(onPressed: () {}, child: Text('Register Now'))
              ],
            )
          ],
        ),
      ),
    );
  }

  TextStyle urbanist7(double fontSize) {
    return TextStyle(
      fontFamily: 'Urbanist',
      fontSize: fontSize,
    );
  }

  Container backButton(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Color.fromARGB(255, 232, 236, 244),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        color: Colors.black,
        onPressed: () {
          Navigator.popAndPushNamed(context, '/');
        },
        style:
            ButtonStyle(minimumSize: MaterialStateProperty.all(Size(41, 41))),
        icon: Icon(Icons.arrow_back),
      ),
    );
  }
}
