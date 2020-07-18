import 'package:flutter/material.dart';
import 'package:store/utils/theme.dart';
import 'package:store/utils/margins.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("FFFFFF"),
      body: Container(
        width: context.screenWidth(),
        height: context.screenHeight(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bitmap.png"),
            fit: BoxFit.contain,
          ),
        ),
        child: Column(
          children: [
            Text("Welcome to Nike")
          ],
        ),
      ),
    );
  }
}
