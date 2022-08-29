import 'package:drincup/screens/login_page.dart';
import 'package:drincup/screens/signup_page.dart';
import 'package:drincup/utils/colors.dart';
import 'package:flutter/material.dart';

class splashPage extends StatelessWidget {
  const splashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: (
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/splash_hero.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: Container(
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontFamily:'Montserrat'),
                          children: [
                            TextSpan(text:'Do You Have a Drinkup To Plan?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40,)),
                            TextSpan(text:'Just get a venue, we will bring food, drinks and music at a very small fee.', style: TextStyle(fontSize: 14,)),
                          ]   
                        ),
                      ),
                      SizedBox(height: 10.0),
                      ElevatedButton(                        
                        style: ElevatedButton.styleFrom(
                          primary: maincolor,
                          minimumSize: Size.fromHeight(67),
                          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'Montserrat'),
                          shape: (
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                          
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Login()),
                          );
                        }, 
                        child: Text('Login')
                      ),
                      SizedBox(height: 10.0),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Color.fromRGBO(255, 255, 255, 1),
                          minimumSize: Size.fromHeight(67),
                          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'Montserrat'),
                          side: BorderSide(width: 1, color: maincolor),
                          shape: (
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Signup()),
                          );
                        }, 
                        child: Text('Sign up')
                      ),
                    ],
                  ),
                )
              )
            ]
          ),
        ) 
      )
    );
  }
}
