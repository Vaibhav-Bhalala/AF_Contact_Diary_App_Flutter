import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Add_Contact_Page extends StatefulWidget {
  const Add_Contact_Page({super.key});

  @override
  State<Add_Contact_Page> createState() => _Add_Contact_PageState();
}

class _Add_Contact_PageState extends State<Add_Contact_Page> {
  String firstname = "";
  String lastname = "";
  String mobile = "";
  String email = "";

  TextEditingController fistname_controller = TextEditingController();
  TextEditingController lastname_controller = TextEditingController();
  TextEditingController mobile_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();

  XFile? image;
  String? imagepath;
  ImagePicker picker = ImagePicker();

  int initalindexed = 0;
  GlobalKey<FormState> Formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText(
              "Add Contact",
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                if (Formkey.currentState!.validate()) {
                  Formkey.currentState!.save();

                  fistname_controller.clear();
                  lastname_controller.clear();
                  mobile_controller.clear();
                  email_controller.clear();
                }
              },
              icon: Icon(Icons.check))
        ],
        centerTitle: true,
      ),
      body: Form(
        key: Formkey,
        child: Stepper(
          currentStep: initalindexed,
          onStepCancel: () {
            setState(() {
              if (initalindexed != 0) {
                --initalindexed;
              }
            });
          },
          onStepContinue: () {
            setState(() {
              if (initalindexed != 4) {
                ++initalindexed;
              }
            });
          },
          steps: [
            Step(
                state: (initalindexed == 0)
                    ? StepState.editing
                    : StepState.indexed,
                isActive: (initalindexed == 0) ? true : false,
                title: Text("Add Image"),
                content: Column(
                  children: [
                    CircleAvatar(
                      child: Text("Add Photo"),
                      backgroundColor: Colors.grey,
                      radius: 50,
                      foregroundImage: FileImage(File("${image?.path}")),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () async {
                            image = await picker.pickImage(
                                source: ImageSource.camera);
                            setState(() {});
                          },
                          icon: Icon(Icons.camera_alt_outlined),
                        ),
                        IconButton(
                          onPressed: () async {
                            image = await picker.pickImage(
                                source: ImageSource.gallery);
                            setState(() {});
                          },
                          icon: Icon(Icons.photo),
                        )
                      ],
                    )
                  ],
                )),
            Step(
                state: (initalindexed == 1)
                    ? StepState.editing
                    : StepState.indexed,
                isActive: (initalindexed == 1) ? true : false,
                title: Text("First Name"),
                content: TextFormField(
                  controller: fistname_controller,
                  validator: (val) {
                    return "Enter Valid First Name";
                  },
                  onSaved: (val) {
                    firstname = val!;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Enter First Name",
                      hintStyle: TextStyle(color: Colors.grey)),
                )),
            Step(
                state: (initalindexed == 2)
                    ? StepState.editing
                    : StepState.indexed,
                isActive: (initalindexed == 2) ? true : false,
                title: Text("Last Name"),
                content: TextFormField(
                  controller: lastname_controller,
                  validator: (val) {
                    return "Enter Valid Last Name";
                  },
                  onSaved: (val) {
                    lastname = val!;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Enter First Name",
                      hintStyle: TextStyle(color: Colors.grey)),
                )),
            Step(
                state: (initalindexed == 3)
                    ? StepState.editing
                    : StepState.indexed,
                isActive: (initalindexed == 3) ? true : false,
                title: Text("Phone Number"),
                content: TextFormField(
                  controller: mobile_controller,
                  validator: (val) {
                    return "Enter Valid Mobile Number";
                  },
                  onSaved: (val) {
                    mobile = val!;
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Enter Mobile Number",
                      hintStyle: TextStyle(color: Colors.grey)),
                )),
            Step(
                state: (initalindexed == 4)
                    ? StepState.editing
                    : StepState.indexed,
                isActive: (initalindexed == 4) ? true : false,
                title: Text("E-mail"),
                content: TextFormField(
                  controller: email_controller,
                  validator: (val) {
                    return "Enter Valid E-Mail Address";
                  },
                  onSaved: (val) {
                    email = val!;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Enter E-mail Address",
                      hintStyle: TextStyle(color: Colors.grey)),
                )),
          ],
        ),
      ),
    );
  }
}
