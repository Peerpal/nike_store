import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:store/utils/margins.dart';
import 'package:store/utils/theme.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var _remember = false;

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
                  "Welcome!",
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
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                              hintText: "Password",
                              prefixIcon: Icon(FeatherIcons.lock)),
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
                      //   value: _remember,
                      //   groupValue: _remember,
                      //   toggleable: true,
                      //   activeColor: red,
                      //   onChanged: ( value) {
                      //     _remember = value;
                      //   },
                      // ),
                      CircularCheckBox(
                        value: _remember,
                        focusColor: red,
                        activeColor: red,
                        onChanged: (value) {
                          setState(() {
                            _remember = value;
                            print(value);
                          });
                        
                        },
                      ),
                      Container(
                        width: 280,
                        height: 40,
                        child: Text(
                          "Remember me next time",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black45,
                          ),
                        ),
                      )
                    ],
                  ),
                  SpaceY(y: 20),
                  (!_remember) ? MaterialButton(
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
                      "Sign In",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ) : MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "dashboard");
                    },
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
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sign In",
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

  void _handleChange(bool value) {}
}
