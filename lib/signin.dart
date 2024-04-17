import 'package:agron/components/my_textfield.dart';
import 'package:agron/login.dart';
import 'package:agron/optionpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});


  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:Container(
      width: double.infinity,
      height: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
      gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xFF013220), Colors.black, Colors.white.withOpacity(0)],
    ),
  ),
  child:  SafeArea(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35,vertical: 60),
          child: SizedBox(
          width: 360,
          height: 106,
          child: Text(
            'Create your Account',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          ),
        ),
        MyTextField(controller: namecontroller, hintText: 'Fullname', obscureText: false),
        const SizedBox(height: 10,),
        MyTextField(controller: emailcontroller, hintText: 'Email', obscureText: false),
        const SizedBox(height: 10,),
        MyTextField(controller: passwordcontroller, hintText: 'Password', obscureText: true),
        const SizedBox(height: 10,),
        MyTextField(controller: passwordcontroller, hintText: 'Confirm Password', obscureText: true),
        const SizedBox(height: 10,),
           GestureDetector(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Text('Already have an account?',style: TextStyle(color: Colors.white),),
                 ],
               ),
             ),
             onTap: () {
               Navigator.push(context, // Current context
      MaterialPageRoute(builder: (context) => loginpage()),);
                   }, 
           ),
           const SizedBox(height: 30,),
           GestureDetector(
             child: Container(
                     height: 50,width: 350,
                     padding: EdgeInsets.symmetric(horizontal: 25),
                     margin:  const EdgeInsets.symmetric(horizontal: 25),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(40),
                       ),
                     child:  const Center(
                       child: Text(
                         'Sign Up',
                          style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                         ),
                       ),
                     ),
                    ),
                   onTap:() {
                     Navigator.push(context, // Current context
      MaterialPageRoute(builder: (context) => OptionPage()),
      );
                   }, 
           ),
      ],
    ),
  ),
  )
  );
  }
}