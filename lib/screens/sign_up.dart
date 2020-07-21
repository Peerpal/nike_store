import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:store/utils/margins.dart';
import 'package:store/utils/theme.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

enum FormState { done, undone }

class _SignUpScreenState extends State<SignUpScreen> {
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: context.screenHeight(),
        width: context.screenWidth(),
        padding: EdgeInsets.fromLTRB(10, 50, 20, 20),
        child: Column(
          children: [
            SpaceY(y: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  elevation: 0,
                  onPressed: () => Navigator.pop(context),
                  minWidth: 45,
                  height: 45,
                  shape: CircleBorder(),
                  color: greyBackground,
                  child: Center(
                    child: Icon(LineAwesomeIcons.close),
                  ),
                ),
              ],
            ),
            SpaceY(y: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let’s Get Started!",
                  style: TextStyle(
                    fontSize: 28,
                    wordSpacing: 16,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SpaceY(y: 5),
                Container(
                  width: 315,
                  height: 38,
                  child: Text(
                    "Sign up with Social of fill the form to continue.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black45,
                    ),
                  ),
                ),
                SpaceY(y: 20),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: greyBackground, width: 1.5),
                      ),
                      child: Image.asset("assets/twitter.png"),
                    ),
                    SpaceX(x: 15),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: greyBackground, width: 1.5),
                      ),
                      child: Image.asset("assets/facebook.png"),
                    ),
                    SpaceX(x: 15),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: greyBackground, width: 1.5),
                      ),
                      child: Image.asset("assets/apple.png"),
                    ),
                    // SpaceX(x: 10),
                  ],
                ),
                SpaceY(y: 25),
                Divider(thickness: 1.3),
                SpaceY(y: 15),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Email Address",
                              prefixIcon: Icon(FeatherIcons.mail)),
                        ),
                        SpaceY(y: 20),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Full Name",
                              prefixIcon: Icon(FeatherIcons.user)),
                        ),
                        SpaceY(y: 20),
                        TextField(
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                              hintText: "Password",
                              prefixIcon: Icon(FeatherIcons.lock)),
                        ),
                        SpaceY(y: 8),
                        Text(
                          "At least 8 characters, 1 uppercase letter, 1 number, 1 symbol",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black45,
                            wordSpacing: 4,
                          ),
                          // textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Radio(
                      //   value: _acceptTerms,
                      //   groupValue: _acceptTerms,
                      //   toggleable: true,
                      //   activeColor: red,
                      //   onChanged: ( value) {
                      //     _acceptTerms = value;
                      //   },
                      // ),
                      CircularCheckBox(
                        value: _acceptTerms,
                        focusColor: red,
                        activeColor: red,
                        onChanged: (value) {
                          setState(() {
                            _acceptTerms = value;
                            print(value);
                          });
                        
                        },
                      ),
                      Container(
                        width: 280,
                        height: 40,
                        child: Text(
                          "By Signing up, you agree to the Terms of Service and Privacy Policy",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black45,
                          ),
                        ),
                      )
                    ],
                  ),
                  SpaceY(y: 20),
                  (!_acceptTerms) ? MaterialButton(
                    onPressed: () {},
                    textColor: Colors.black,
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 20,
                    ),
                    color: HexColor("#FFFFFF"),
                    minWidth: 160,
                    height: 56,
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ) : MaterialButton(
                    onPressed: () {},
                    textColor: Colors.black,
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 20,
                    ),
                    color: blue,
                    minWidth: 160,
                    height: 56,
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Container(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SpaceX(x: 5),
                          Icon(LineAwesomeIcons.arrow_right, color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleChange(value) {
    print(value);
    setState(() {
      _acceptTerms = value;
    });
  }
}
