import 'package:book_store_app/constant.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  // comstructor of this class
  CustomTextField({
    // assign values in constructor
    Key? key,
    required this.textOnLabale,
    required this.controller,
    required this.isSecure,
    this.errorText,
    this.iconPrefix,
    this.iconSufix,
    this.validatingfunc,
  }) : super(key: key);

  // variables for insert this
  final errorText;
  final textOnLabale;
  final Function()? validatingfunc;
  TextEditingController controller;

  // these are can be nullable
  Widget? iconPrefix;
  Widget? iconSufix;
  final bool isSecure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isSecure,
      controller: controller,
      decoration: InputDecoration(
        errorText: errorText,
        label: Text(textOnLabale),
        prefixIcon: iconPrefix,
        suffixIcon: iconSufix,

        // this is the border style of start
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: kBorderColor, width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(18),
          ),
        ),

        // this is the border style of after focus
        focusedBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: kFocusBorderColor, width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
