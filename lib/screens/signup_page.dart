import 'dart:ui';

import 'package:drincup/widgets/text_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/colors.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 32),
          color: bgcolor,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Flexible(child: Container(), flex: 1),
            SizedBox(
              height: 35,
            ),
            Center(
              child: Text(
                'DrinCup',
                style: TextStyle(
                    fontFamily: 'MuseoModerno',
                    fontWeight: FontWeight.bold,
                    color: maincolor,
                    fontSize: 64),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 64,
                  backgroundImage:  NetworkImage(
                    "https://media.istockphoto.com/id/1402857938/photo/shes-trying-her-best-to-calm-down-and-relax.webp?s=2048x2048&w=is&k=20&c=1QU66zUpeXNYLahlgtBlbPHKEzoFfZJsfKixbA1MyIE="
                  )
                ),
                Positioned(
                  child: IconButton(
                    
                  ))
                              
              ],
            ),
            SizedBox(height: 15,),
            TextFieldInput(
                hintText: 'Enter your full name',
                textEditingController: _nameController,
                textInputType: TextInputType.text),
            SizedBox(
              height: 10,
            ),         
            TextFieldInput(
                hintText: 'Enter your email address',
                textEditingController: _emailController,
                textInputType: TextInputType.emailAddress),
            SizedBox(
              height: 10,
            ),
            TextFieldInput(
              hintText: 'Enter your Password',
              textEditingController: _passwordController,
              textInputType: TextInputType.text,
              isPass: true,
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              child: Container(
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Montserrat",
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  color: btcolor1,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(child: Container(), flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Already Have an Acccount?",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Montserrat",
                      fontSize: 14,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Text(
                      "Login.",
                      style: TextStyle(
                          color: Colors.red,
                          fontFamily: "Montserrat",
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
