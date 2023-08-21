import 'package:contact_diary_app/screens/add_contact_page.dart';
import 'package:contact_diary_app/screens/homepage.dart';
import 'package:contact_diary_app/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: appthemedata.Lighttheme,
    darkTheme: appthemedata.Darktheme,
    routes: {
      '/': (context) => HomePage(),
      'add_to_contact': (context) => Add_Contact_Page(),
    },
  ));
}
