import 'package:book_store_app/constant.dart';
import 'package:book_store_app/widgets/separate_screen_widgets/registration_background.dart';
import 'package:flutter/material.dart';

class InsideBorder extends StatelessWidget {
  const InsideBorder({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      //Inside border
      child: Container(
        width: size.width * 0.89,
        height: size.height * 0.88,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: kInsideFormColor,
        ),
      ),
    );
  }
}

class OutSideBorder extends StatelessWidget {
  const OutSideBorder({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      //Outside border
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.9,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color: kBorderColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              spreadRadius: 4,
              blurRadius: 9,
              offset: const Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}
