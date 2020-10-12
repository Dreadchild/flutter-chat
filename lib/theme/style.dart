import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData ChatAppTheme() => ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.deepPurple,
      accentColor: Colors.purple,
      hintColor: Colors.yellow,
      iconTheme: IconThemeData(
        color: Colors.amber,
      ),
      fontFamily: GoogleFonts.aladin().fontFamily,
    );

LinearGradient LinearGradientDefault() => LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [HexColor("#690356"), HexColor("#8E0C76")],
    );

Widget TextTitle(text, {padding, alignCenter}) {
  return SimpleText(text,
      size: 30.0, padding: padding, alignCenter: alignCenter);
}

Widget TextSubtitle(text, {color, padding, alignCenter}) {
  return SimpleText(text, size: 20.0, color: color, alignCenter: alignCenter);
}

Widget SimpleText(text, {padding, color, alignCenter, @required double size}) {
  return Padding(
    padding: padding ?? EdgeInsets.zero,
    child: Text(
      text,
      textAlign: alignCenter ?? false ? TextAlign.center : TextAlign.left,
      style: GoogleFonts.abel(
          fontWeight: FontWeight.bold,
          fontSize: size,
          color: color ?? Colors.white,
          decoration: TextDecoration.none),
    ),
  );
}
