import 'package:book_store_app/widgets/buttons/custom_elevated_button.dart';
import 'package:book_store_app/widgets/separate_screen_widgets/background_border.dart';
import 'package:book_store_app/widgets/separate_screen_widgets/text_cat.dart';
import 'package:book_store_app/widgets/separate_screen_widgets/text_field.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);
  static const pageKey = "/registration-screen";

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // using this variable will chnage password text visible or unvisible
  bool _isSecureText = true;

//this will get the text of password field
  final TextEditingController _nameReg = TextEditingController();
  final TextEditingController _addressReg = TextEditingController();
  final TextEditingController _phoneReg = TextEditingController();
  final TextEditingController _nicReg = TextEditingController();
  final TextEditingController _emailTextReg = TextEditingController();
  final TextEditingController _passwordTextReg = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // bottom wave vector
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/4.png'),
            ),

            // middle border
            OutSideBorder(size: size),
            InsideBorder(size: size),

            // Top wave vector
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/images/4Up.png'),
            ),

            // form
            Center(
              child: Container(
                width: size.width * 0.8,
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
        ),
      ),
    );
  }
}
