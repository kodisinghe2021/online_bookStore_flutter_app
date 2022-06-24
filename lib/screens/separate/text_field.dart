import 'package:flutter/material.dart';

class BlueThemeTextfield extends StatelessWidget {
  const BlueThemeTextfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text("Email"),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        prefixIcon: Icon(Icons.email),
      ),
    );
  }
}


class BlueThemePasswordfield extends StatelessWidget {
  const BlueThemePasswordfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text("Password"),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        prefixIcon: Icon(Icons.security_outlined),
        suffixIcon: Icon(Icons.remove_red_eye),
      ),
    );
  }
}
