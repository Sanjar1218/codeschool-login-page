// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:codeschool_login_page/tools/alltools.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Image(image: AssetImage('img/dark.png')),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'CODESCHOOL',
                          style: TextStyle(
                            fontFamily: 'Urbanist',
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      BlackButton(
                        name: 'Login',
                        call: () {
                          Navigator.pushNamed(context, '/login');
                        },
                      ),
                      SizedBox(height: 10),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(330, 56)),
                        ),
                        child: Center(
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Urbanist',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 90),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Continue as a guest',
                            style: TextStyle(fontFamily: 'urbanist-m'),
                          ))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
