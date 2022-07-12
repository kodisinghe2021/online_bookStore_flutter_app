import 'package:book_store_app/constant.dart';
import 'package:book_store_app/views/login_screen/login_screen.dart';
import 'package:book_store_app/views/login_screen/registration_screen.dart';
import 'package:book_store_app/views/products/product_favourite_page.dart';
import 'package:book_store_app/views/products/single_book_full_details.dart';
import 'package:book_store_app/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:provider/provider.dart';
import 'package:book_store_app/provider/books_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BooksProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: kPrimeryColor,
        ),
        home: const SplashScreen(title: 'Online Books Store'),
        routes: {
          LoginScreen.pageKey: (context) => LoginScreen(),
          ProductFavouritePage.pageKey: (context) => ProductFavouritePage(),
          RegistrationScreen.pageKey: (context) => const RegistrationScreen(),
          SingleBookFullDetailsScreen.pageKey: (context) =>
              const SingleBookFullDetailsScreen(),
        },
      ),
    );
  }
}
