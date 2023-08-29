import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Intro_Screen extends StatefulWidget {
  const Intro_Screen({super.key});

  @override
  State<Intro_Screen> createState() => _Intro_ScreenState();
}

class _Intro_ScreenState extends State<Intro_Screen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: IntroductionScreen(
        pages: [
          PageViewModel(
              titleWidget: AnimatedTextKit(
                animatedTexts: [
                  FlickerAnimatedText("Contact Diary ",
                      textStyle: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 25))
                ],
              ),
              bodyWidget: Column(
                children: [
                  Container(
                    height: h * 0.60,
                    width: w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.dribbble.com/users/623022/screenshots/3794948/___.gif"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText("Welcomes You ",
                          textStyle: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 25))
                    ],
                  )
                ],
              )),
          PageViewModel(
              titleWidget: Text(
                "",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
              bodyWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: h * 0.60,
                    width: w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://i.gifer.com/96Be.gif"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText("Make Your Own  Diary",
                          textStyle: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 25))
                    ],
                  )
                ],
              )),
          PageViewModel(
              titleWidget: Text(
                "",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
              bodyWidget: Column(
                children: [
                  Container(
                    height: h * 0.60,
                    width: w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://dtlive.s3.ap-south-1.amazonaws.com/16387/DT_G70_Digital-marketing-Animated-GIF-Icon-pack.gif"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                          "Easy Way to Manages Your Contacts",
                          textStyle: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 25))
                    ],
                  )
                ],
              )),
          PageViewModel(
              titleWidget: Text(
                "",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
              bodyWidget: Column(
                children: [
                  Container(
                    height: h * 0.60,
                    width: w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/originals/95/54/55/95545586b437892bff2dd2174e8e088e.gif"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  AnimatedTextKit(animatedTexts: [
                    TypewriterAnimatedText(
                      "Sync Your Contacts Easily",
                      textStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    )
                  ]),
                ],
              )),
          PageViewModel(
              titleWidget: Text(
                "",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
              bodyWidget: Column(
                children: [
                  Container(
                    height: h * 0.60,
                    width: w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://mir-s3-cdn-cf.behance.net/project_modules/disp/bbd43646252567.584db791c363c.gif"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  AnimatedTextKit(animatedTexts: [
                    TypewriterAnimatedText(
                      "Let's gets Started",
                      textStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    )
                  ]),
                ],
              )),
        ],
        showNextButton: false,
        done: const Text("Start"),
        onDone: () async {
          Navigator.pushReplacementNamed(context, 'home');
          SharedPreferences preferences = await SharedPreferences.getInstance();
          preferences.setBool("visited", true);
        },
      ),
    );
  }
}
