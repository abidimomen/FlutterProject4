import 'package:flutter/material.dart';
import 'package:workshop_sim4/new_home.dart';
import 'package:workshop_sim4/signin.dart';
import 'signup.dart';
import 'product_details.dart';
import 'home.dart';
import 'product_info.dart';
// import 'package:workshop_sim4/forgpass.dart';
import 'forgpass.dart';
import 'panier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'G-Store ESPRIT',
     // home: SignIn(),
      //home: Forgpass(),
      //home: Signup(),
     // home : Forgpass(),
      //home: NewHome(),
      //home: Home(),
      home : Panier(),
      /* home: ProductDetails("assets/images/dmc5.jpg", 
      "Devil May Cry 5",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
      "sed do eiusmod tempor incididunt ut"
      "labore et dolore magna aliqua. Ut enim ad minim veniam, "
      "quis nostrud exercitation ullamco laboris nisi ut "
      "aliquip ex ea commodo consequat. Duis aute irure dolor "
      "in reprehenderit in voluptate velit esse cillum dolore "
      "eu fugiat nulla pariatur. Excepteur sint occaecat "
      "cupidatat non proident, sunt in culpa qui officia "
      "deserunt mollit anim id est laborum.", 
      200, 
      3000) */);
  }
}