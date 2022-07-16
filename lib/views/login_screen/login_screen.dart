import 'package:flutter/material.dart';
import 'package:book_store_app/constant.dart';
import 'package:book_store_app/views/home_page/home_screen_tabview.dart';
import 'package:book_store_app/views/login_screen/registration_screen.dart';
import 'package:book_store_app/views/products/product_favourite_page.dart';
import 'package:book_store_app/utils/util_functions.dart';
import 'package:book_store_app/widgets/buttons/custom_elevated_button.dart';
import 'package:book_store_app/widgets/separate_screen_widgets/background_border.dart';
import 'package:book_store_app/widgets/separate_screen_widgets/text_cat.dart';
import 'package:book_store_app/widgets/separate_screen_widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);
  // key of this page
  static const pageKey = '/login-screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // using this variable will chnage password text visible or unvisible
  bool _isSecureText = true;

//this will get the text of password field
  final TextEditingController _emailTextLog = TextEditingController();
  final TextEditingController _passwordTextLog = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String screenWidth = size.width.ceil().toString();
    double sc = size.height * 0.75;
    String screenHeigth = sc.ceil().toString();
    // final String screenWidth = w.toString();
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
                top: 210,
                left: 90,
                child: CustomHeading01(
                  text: 'LOGIN',
                ),
              ),
               
              Positioned(
                top: 600,
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
                      Navigator.pushNamed(context, RegistrationScreen.pageKey);
                    },
                    icon: Icon(Icons.person_add),
                  ),
                ),
              ),
              Positioned(
                top: 655,
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
                      UtilFuntion.NavigateTo(context, HomePageTabView());
                    },
                    icon: Icon(Icons.login),
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
