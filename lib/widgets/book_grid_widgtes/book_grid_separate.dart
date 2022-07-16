import 'package:book_store_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// class RoundardIcon extends StatelessWidget {
//   const RoundardIcon({
//     Key? key,
//     required this.onTap,
//     required this.icon,
//   }) : super(key: key);
//   final Function onTap;
//   final Icon icon;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 40,
//       width: 40,
//       decoration: BoxDecoration(
//         color: kBorderColor.withOpacity(0.8),
//         border: Border.all(
//           color: kBorderColor,
//         ),
//         shape: BoxShape.circle,
//       ),
//       child: IconButton(
//         onPressed: onTap(),
//         icon: icon,
//       ),
//     );
//   }
// }


class BookFootterText extends StatelessWidget {
  const BookFootterText({
    Key? key,
    required this.text,
    this.size = 15.0,
  }) : super(key: key);

  final text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.cormorantSc(
        textStyle: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: size,
            fontWeight: FontWeight.w500,
            color: kPrimeryColor,
            letterSpacing: 3),
      ),
    );
  }
}
