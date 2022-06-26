import 'package:book_store_app/constant.dart';
import 'package:book_store_app/screens/separate_screen_widgets/text_cat.dart';
import 'package:book_store_app/screens/separate_screen_widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBackGround extends StatefulWidget {
  const CustomBackGround({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<CustomBackGround> createState() => _CustomBackGroundState();
}

class _CustomBackGroundState extends State<CustomBackGround> {
  // using this variable will chnage password text visible or unvisible
  bool _isSecureText = true;

//this will get the text of password field
  TextEditingController _emailText = TextEditingController();
  TextEditingController _passwordText = TextEditingController();

// form controller
  var _formkey = GlobalKey<FormState>();

// Error Message
  var _errorTextPassword = "";
  var _errorTextEmail = "";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          // bottom wave vector
          alignment: Alignment.bottomCenter,
          child: Image.asset('assets/images/4.png'),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              //Outside border
              child: Container(
                width: widget.size.width * 0.9,
                height: widget.size.height * 0.7,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: kPrimeryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 4,
                      blurRadius: 9,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              //Inside border
              child: Container(
                width: widget.size.width * 0.89,
                height: widget.size.height * 0.68,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Align(
          // up wave
          alignment: Alignment.topCenter,
          child: Image.asset('assets/images/4Up.png'),
        ),
        Center(
          child: Container(
            width: widget.size.width * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Heading 01
                const CustomHeading01(
                  text: 'LOGIN',
                ),
                //Gap between two Widgtes
                const SizedBox(height: 90),
                // this is email field
                CustomTextField(
                  textOnLabale: "Email",
                  isSecure: false,
                  controller: _emailText,
                  errorText: _errorTextEmail,
                  iconPrefix: const Icon(Icons.email),
                ),
                //Gap between two Widgtes
                const SizedBox(height: 10),

                // this is password field
                CustomTextField(
                  textOnLabale: "Password",
                  isSecure: _isSecureText,
                  controller: _passwordText,
                  errorText: _errorTextPassword,
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
                // CustomElevatedButton(text: 'Login', onTap: () {}),
                CustomElevatedButton(
                  text: 'Login',
                  onTap: () {
                    setState(() {
                      if (_passwordText.text.length < 6) {
                        _errorTextPassword = "Invalid Length";
                      } else {
                        _errorTextPassword = "";
                      }
                      if (!_emailText.text.contains("@")) {
                        _errorTextEmail = "Invalid Email";
                      } else {
                        _errorTextEmail = "";
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }


}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: ElevatedButton(
        onPressed: onTap(),
        child: Text("data"), //CustomButtonText(text: text),
      ),
    );
  }
}
