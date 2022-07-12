
import 'package:book_store_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RounderdIcon extends StatelessWidget {
  const RounderdIcon({
    Key? key,
    required this.iconS,
  }) : super(key: key);
  final Icon iconS;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: kBorderColor.withOpacity(0.8),
          border: Border.all(
            color: kBorderColor,
          ),
          shape: BoxShape.circle,
        ),
        child: iconS);
  }
}

class BookFootterText extends StatelessWidget {
  const BookFootterText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.cormorantSc(
        textStyle: const TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: kPrimeryColor,
            letterSpacing: 3),
      ),
    );
  }
}
