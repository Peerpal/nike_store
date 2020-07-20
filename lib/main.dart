import 'package:flutter/material.dart';
import 'package:store/screens/dashboard.dart';
import 'package:store/screens/sign_up.dart';
import 'package:store/screens/signin.dart';
import 'package:store/screens/welcome_screen.dart';
import 'package:store/utils/theme.dart';

void main() {
  runApp(NikeStore());
}

class NikeStore extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => WelcomeScreen(),
        "signup": (context) => SignUpScreen(),
        "signin": (context) => SignInScreen(),
        "dashboard": (context) => Dashboard()
      },
      // home: WelcomeScreen(),
    );
  }
}