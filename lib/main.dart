import 'package:e_commerce/firebase_options.dart';
import 'package:e_commerce/home_pages.dart/dashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/login_pages.dart/signin.dart';
import 'package:e_commerce/payment_pages.dart/search.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   // options: DefaultFirebaseOptions.currentPlatform,
);
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