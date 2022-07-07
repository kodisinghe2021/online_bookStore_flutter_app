import 'package:book_store_app/widgets/separate_screen_widgets/login_background.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  // key of this page
  static const pageKey = '/login-screen';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(body: LoginBackGround(size: size)));
  }
}
