import 'package:contact_diary_app/screens/add_contact_page.dart';
import 'package:contact_diary_app/screens/homepage.dart';
import 'package:contact_diary_app/screens/intro_page.dart';
import 'package:contact_diary_app/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();

  bool isvisitedonce = preferences.getBool("visited") ?? false;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: appthemedata.Lighttheme,
    darkTheme: appthemedata.Darktheme,
    initialRoute: (isvisitedonce == true) ? 'home' : '/',
    routes: {
      '/': (context) => Intro_Screen(),
      'home': (context) => HomePage(),
      'add_to_contact': (context) => Add_Contact_Page(),
    },
  ));
}
