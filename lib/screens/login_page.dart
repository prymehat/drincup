import 'package:drincup/screens/signup_page.dart';
import 'package:drincup/utils/colors.dart';
import 'package:drincup/widgets/text_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose(); 
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
          child: ListView(

              shrinkWrap: true,
              // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 35,),
              Center(
                child: Text('DrinCup', style: TextStyle(fontFamily: 'MuseoModerno', fontWeight: FontWeight.bold, color: maincolor, fontSize: 24),),
              ),
              SizedBox(height: 15,),
              Center(
                child: Image(image: AssetImage('assets/login_hero.png'),)
                ,
              ),
              SizedBox(height: 15,),
              TextFieldInput(
                
                hintText: 'Enter your email address', 
                textEditingController: _emailController, 
                textInputType: TextInputType.emailAddress),
              SizedBox(height: 10,),
              TextFieldInput(
        
                hintText: 'Enter your Password', 
                textEditingController: _passwordController, 
                textInputType: TextInputType.text,
                isPass: true,
              ),
              SizedBox(height: 10,),
              InkWell(
                child: Container(
                  child: Text(
                    'Login',
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
                    color: Colors.black,
                    
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "New here?", 
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Montserrat",
                      fontSize: 14,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
                  },
                  child: Container(
                    child: Text(
                      "Sign up.", 
                      style: TextStyle(color: Colors.red, 
                      fontFamily: "Montserrat",
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                ),

              ],
              )
                        
            ]
          ),
        ),
      ),
    );
  }
}