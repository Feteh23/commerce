import 'package:e_commerce/home_pages.dart/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/login_pages.dart/signin.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
  home: SignIn(),
    );
  }
}