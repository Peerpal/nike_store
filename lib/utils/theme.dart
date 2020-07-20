import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

HexColor primaryColor = HexColor("#FF4945");
HexColor blue = HexColor("#226AC9");
HexColor accentColor = HexColor("#226AC9");
HexColor muteTextColor = HexColor("#A6A6AB");
HexColor green = HexColor("#4FD940");
HexColor lightgreen = HexColor("#F6FCF3");
HexColor red = HexColor("FF5555");
HexColor lightred = HexColor("#FFF4F6");
HexColor greyBackground = HexColor("#F3F3F4");

themeData(context) => ThemeData(
      textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme),
      primaryColor: primaryColor,
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

darkThemeData(context) => ThemeData.dark().copyWith(
      textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme),
      primaryColor: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      
    );

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
