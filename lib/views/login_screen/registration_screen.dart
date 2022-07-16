
import 'package:book_store_app/constant.dart';
import 'package:book_store_app/utils/util_functions.dart';
import 'package:book_store_app/views/login_screen/login_screen.dart';
import 'package:book_store_app/widgets/buttons/custom_elevated_button.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              SizedBox(
                width: size.width,
                height: size.height,
                child: Image.asset(
                  'assets/images/pat02.png',
                  fit: BoxFit.fill,
                ),
              ),

              Container(
                padding: const EdgeInsets.only(left: 60),
                width: size.width * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(
                      textOnLabale: "Name",
                      isSecure: false,
                      controller: _nameReg,
                      // errorText: _errorTextEmailLog,
                      iconPrefix: const Icon(Icons.person_add_alt_outlined),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      textOnLabale: "Address",
                      isSecure: false,
                      controller: _addressReg,
                      // errorText: _errorTextEmailLog,
                      iconPrefix: const Icon(Icons.local_post_office),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      textOnLabale: "Phone Number",
                      isSecure: false,
                      controller: _phoneReg,
                      // errorText: _errorTextEmailLog,
                      iconPrefix: const Icon(Icons.phone),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      textOnLabale: "NIC",
                      isSecure: false,
                      controller: _nicReg,
                      // errorText: _errorTextEmailLog,
                      iconPrefix: const Icon(Icons.format_indent_increase),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      textOnLabale: "Email",
                      isSecure: false,
                      controller: _emailTextReg,
                      // errorText: _errorTextEmailLog,
                      iconPrefix: const Icon(Icons.email),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      textOnLabale: "Password",
                      isSecure: _isSecureText,
                      controller: _passwordTextReg,
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
                    CustomElevatedButtonNew(() {}, text: 'SIGN IN'),
                  ],
                ),
              ),

              //this is the logo of right upper cornor
              Align(
                alignment: Alignment.topRight,
                child: Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
                    width: size.width * 0.4,
                    height: size.width * 0.4,
                    child: Image.asset('assets/images/login.png')),
              ),

              const Positioned(
                top: 110,
                left: 20,
                child: CustomHeading01(
                  text: 'SIGN IN',
                ),
              ),
   Positioned(
                top: 725,
                right: 0,
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: kPrimeryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      UtilFuntion.NavigateTo(context, LoginScreen());
                    },
                    icon: Icon(Icons.arrow_circle_right),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
