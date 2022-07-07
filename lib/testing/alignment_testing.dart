import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlignmentTesting extends StatelessWidget {
  const AlignmentTesting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.amber,
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),
            Align(
            alignment: Alignment.center,
              child: Container(
                width: 300,
                height: 300,
                color: Colors.green,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 300,
                height: 300,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
