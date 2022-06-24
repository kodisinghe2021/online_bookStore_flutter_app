import 'package:book_store_app/screens/login_screen/login_screen.dart';
import 'package:book_store_app/utils/util_functions.dart';
import 'package:flutter/material.dart';

// this widgte for Splash Screen
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      UtilFuntion.NavigateTo(context, const LoginScreen());
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
              style: TextStyle(fontSize: 40, color: Colors.blueAccent),
            ),
            Text(
              "Online Book Store",
              style: TextStyle(fontSize: 20, color: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}
