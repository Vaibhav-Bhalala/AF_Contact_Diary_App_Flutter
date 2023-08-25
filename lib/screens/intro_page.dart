import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

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
              titleWidget: Text(
                "Contact Diary",
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
                                "https://cdn.dribbble.com/users/623022/screenshots/3794948/___.gif"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              )),
          PageViewModel(
              titleWidget: Text(
                "Contact Diary",
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
                                "https://cdn.dribbble.com/users/623022/screenshots/3794948/___.gif"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              )),
          PageViewModel(
              titleWidget: Text(
                "Contact Diary",
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
                                "https://cdn.dribbble.com/users/623022/screenshots/3794948/___.gif"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              )),
          PageViewModel(
              titleWidget: Text(
                "Contact Diary",
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
                                "https://cdn.dribbble.com/users/623022/screenshots/3794948/___.gif"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              )),
          PageViewModel(
              titleWidget: Text(
                "Contact Diary",
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
                                "https://cdn.dribbble.com/users/623022/screenshots/3794948/___.gif"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              )),
        ],
        showNextButton: false,
        done: const Text("Start"),
        onDone: () {
          // On button pressed
        },
      ),
    );
  }
}
