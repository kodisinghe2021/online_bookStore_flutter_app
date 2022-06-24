import 'package:book_store_app/constant.dart';
import 'package:book_store_app/screens/separate/text_field.dart';
import 'package:flutter/material.dart';

class CustomBackGround extends StatelessWidget {
  const CustomBackGround({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //rgba(243, 106, 62, 1)
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
              child: SingleChildScrollView(
                child: Container(
                  width: size.width * 0.9,
                  height: size.height * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
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
                width: size.width * 0.89,
                height: size.height * 0.68,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
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
            width: size.width * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlueThemeTextfield(),
                SizedBox(height: 20),
                BlueThemePasswordfield(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
