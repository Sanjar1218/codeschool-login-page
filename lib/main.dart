// ignore_for_file: prefer_const_constructors
import 'package:codeschool_login_page/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:codeschool_login_page/pages/home.dart';
import 'package:codeschool_login_page/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}
