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
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // bottom wave vector
            Align(
              // bottom wave vector
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

            //form
            Center(
              child: Container(
                width: size.width * 0.8,
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
                          Navigator.pushNamed(
                              context, RegistrationScreen.pageKey);
                        },
                        child: const Text("Not Account? Register Here"),
                      ),
                      Container(
                        color: kBorderColor.withOpacity(0.5),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, ProductFavouritePage.pageKey);
                          },
                          child: const Text("Continue as a guest"),
                        ),
                      ),
                      Container(
                        color: kBorderColor.withOpacity(0.5),
                        child: TextButton(
                          onPressed: () {
                            UtilFuntion.NavigateTo(context, HomePageTabView());
                          },
                          child: const Text("Continue as a guest"),
                        ),
                      ),
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
