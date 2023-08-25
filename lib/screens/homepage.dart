import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'add_to_contact');
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText("Home Page",
                textStyle: GoogleFonts.getFont("Nunito")
                    .copyWith(fontSize: 30, fontWeight: FontWeight.bold)),
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
          child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TypewriterAnimatedText("You have no Contacts yet ",
              textStyle: GoogleFonts.getFont("Nunito")
                  .copyWith(fontSize: 30, color: Colors.grey)),
        ],
      )),
    );
  }
}
