import 'package:book_store_app/screens/login_screen/registration_screen.dart';
import 'package:book_store_app/utils/util_functions.dart';
import 'package:book_store_app/widgets/buttons/custom_elevated_button.dart';
import 'package:book_store_app/widgets/separate_screen_widgets/background_border.dart';
import 'package:book_store_app/widgets/separate_screen_widgets/text_cat.dart';
import 'package:book_store_app/widgets/separate_screen_widgets/text_field.dart';
import 'package:flutter/material.dart';

class LoginBackGround extends StatefulWidget {
  const LoginBackGround({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<LoginBackGround> createState() => _LoginBackGroundState();
}

class _LoginBackGroundState extends State<LoginBackGround> {
  // using this variable will chnage password text visible or unvisible
  bool _isSecureText = true;

//this will get the text of password field
  final TextEditingController _emailTextLog = TextEditingController();
  final TextEditingController _passwordTextLog = TextEditingController();

// Error Message
  // var _errorTextPasswordLog = "";
  // var _errorTextEmailLog = "";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // bottom wave vector
        Align(
          // bottom wave vector
          alignment: Alignment.bottomCenter,
          child: Image.asset('assets/images/4.png'),
        ),

        // middle border
        OutSideBorder(size: widget.size),
        InsideBorder(size: widget.size),

        // Top wave vector
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset('assets/images/4Up.png'),
        ),

        //form
        Center(
          child: Container(
            width: widget.size.width * 0.8,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomHeading01(
                    text: 'LOGIN',
                  ),
                  const SizedBox(height: 90),
                  CustomTextField(
                    textOnLabale: "Email",
                    isSecure: false,
                    controller: _emailTextLog,
                    // errorText: _errorTextEmailLog,
                    iconPrefix: const Icon(Icons.email),
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    textOnLabale: "Password",
                    isSecure: _isSecureText,
                    controller: _passwordTextLog,
                    // errorText: _errorTextPasswordLog,
                    iconPrefix: const Icon(Icons.security),
                    iconSufix: IconButton(
                      onPressed: () {
                        setState(() {
                          _isSecureText = !_isSecureText;
                        });
                      },
                      icon: Icon(_isSecureText
                          ? Icons.remove_red_eye_outlined
                          : Icons.remove_red_eye),
                    ),
                  ),
                  const SizedBox(height: 30),
                  CustomElevatedButtonNew(() {}, text: 'LOGIN'),
                  TextButton(
                      onPressed: () {
                        UtilFuntion.NavigateTo(context, RegistrationScreen());
                      },
                      child: const Text("Not Account? Register Here")),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  // void onTapFunc() {
  //   setState(() {
  //     if (_passwordTextLog.text.length < 6) {
  //       _errorTextPasswordLog = "Invalid Length";
  //     } else {
  //       _errorTextPasswordLog = "";
  //     }
  //     if (!_emailTextLog.text.contains('@')) {
  //       _errorTextEmailLog = "Invalid Email";
  //     } else {
  //       _errorTextEmailLog = "";
  //     }
  //   });
  // }
}
