import 'package:book_store_app/constant.dart';
import 'package:book_store_app/views/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

// this widgte for Splash Screen
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required String title}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
// this function will move, from this page to the home page after a given time.
  @override
  void initState() {
    navigateToLoginPage();
    super.initState();
  }

  // this function will tell to the void initState() {} do this thing
  void navigateToLoginPage() {
    Future.delayed(const Duration(seconds: 4), () {
      // this function is available in the utilfunction
      // UtilFuntion.NavigateTo(context, const LoginScreen());
      Navigator.pushNamed(context, LoginScreen.pageKey);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      //this container is get the full size of the screen
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "BOOKLAND",
              style: TextStyle(fontSize: 40, color: kPrimeryColor),
            ),
            Text(
              "Online Book Store",
              style: TextStyle(fontSize: 20, color: kPrimeryColor),
            ),
          ],
        ),
      ),
    );
  }
}
