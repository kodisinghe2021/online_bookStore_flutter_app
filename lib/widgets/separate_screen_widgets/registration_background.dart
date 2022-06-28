import 'package:book_store_app/widgets/buttons/custom_elevated_button.dart';
import 'package:book_store_app/widgets/separate_screen_widgets/background_border.dart';
import 'package:book_store_app/widgets/separate_screen_widgets/text_cat.dart';
import 'package:book_store_app/widgets/separate_screen_widgets/text_field.dart';
import 'package:flutter/material.dart';

class RegistrationBackGround extends StatefulWidget {
  const RegistrationBackGround({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<RegistrationBackGround> createState() => _RegistrationBackGroundState();
}

class _RegistrationBackGroundState extends State<RegistrationBackGround> {
  // using this variable will chnage password text visible or unvisible
  bool _isSecureText = true;

//this will get the text of password field
  final TextEditingController _nameReg = TextEditingController();
  final TextEditingController _addressReg = TextEditingController();
  final TextEditingController _phoneReg = TextEditingController();
  final TextEditingController _nicReg = TextEditingController();
  final TextEditingController _emailTextReg = TextEditingController();
  final TextEditingController _passwordTextReg = TextEditingController();

// Error Message
  // var _errorTextPasswordReg = "";
  // var _errorTextEmailReg = "";
  // var _errorTextPhone = "";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // bottom wave vector
        Align(
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

        // form
        Center(
          child: Container(
            width: widget.size.width * 0.8,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Heading 01
                  const CustomHeading02(
                    text: 'Registration',
                  ),
                  //Gap between two Widgtes
                  const SizedBox(height: 50),
                  CustomTextField(
                    textOnLabale: "Name",
                    isSecure: false,
                    controller: _nameReg,
                    iconPrefix: const Icon(Icons.person_add),
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    textOnLabale: "Address",
                    isSecure: false,
                    controller: _addressReg,
                    iconPrefix: const Icon(Icons.location_on),
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    textOnLabale: "Mobile",
                    isSecure: false,
                    controller: _phoneReg,
                    // errorText: _errorTextPhone,
                    iconPrefix: const Icon(Icons.mobile_friendly_outlined),
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    textOnLabale: "NIC",
                    isSecure: false,
                    controller: _nicReg,
                    iconPrefix: const Icon(Icons.perm_identity),
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    textOnLabale: "Email",
                    isSecure: false,
                    controller: _emailTextReg,
                    // errorText: _errorTextEmailReg,
                    iconPrefix: const Icon(Icons.email),
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    textOnLabale: "Password",
                    isSecure: _isSecureText,
                    controller: _passwordTextReg,
                    // errorText: _errorTextPasswordReg,
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

                  // login button wrap with sized box
                  CustomElevatedButtonNew(() {}, text: 'Sign In'),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Have an Account? Login Here")),
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
  //     if (_passwordTextReg.text.length < 6) {
  //       _errorTextPasswordReg = "Invalid Length";
  //     } else {
  //       _errorTextPasswordReg = "";
  //     }
  //     if (!_emailTextReg.text.contains('@')) {
  //       _errorTextEmailReg = "Invalid Email";
  //     } else {
  //       _errorTextEmailReg = "";
  //     }
  //   });
  // }
}
