import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
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
        padding: EdgeInsets.fromLTRB(20, 100, 20, 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bitmap.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Buy & Sell Authentic",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: red,
              ),
            ),
            SpaceY(y: 10),
            Text(
              "X-S-Store",
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Container(
              width: 180,
              height: 64,
              child: Text(
                "Real Time Makret Pricing",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "signup");
                      },
                      textColor: Colors.black,
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      color: Colors.white,
                      minWidth: 315,
                      height: 58,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SpaceY(y: 15),
                    MaterialButton(
                      onPressed: () => Navigator.popAndPushNamed(context, "signin"),
                      textColor: Colors.black,
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      color: HexColor("#952620"),
                      minWidth: 315,
                      height: 58,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
