import 'package:book_store_app/widgets/separate_screen_widgets/registration_background.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(body: RegistrationBackGround(size: size)));
  }
}
