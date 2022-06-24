import 'package:book_store_app/constant.dart';
import 'package:book_store_app/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimeryColor,
      ),
      home: const MyHomePage(title: 'Online Books Store'),
    );
  }
}

