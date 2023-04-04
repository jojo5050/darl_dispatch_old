import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:darl_dispatch/AuthManagers/auth_checker.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    delayAndNavigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 10.h,),
          Center(child: Container(child: Image.asset("assets/images/darllogo.png"),)),

          SizedBox(height: 10.h,),

          Center(
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText("FAST",
                    textStyle: TextStyle(color: Colors.black, fontSize: 25.sp,
                        decoration: TextDecoration.none,
                        fontFamily: "Customfont") ),
                TypewriterAnimatedText("SAFE",
                    textStyle: TextStyle(color: Colors.black, fontSize: 25.sp,
                        decoration: TextDecoration.none,
                        fontFamily: "Customfont") ),
                TypewriterAnimatedText("RELIABLE",
                    textStyle: TextStyle(color: Colors.black, fontSize: 25.sp,
                        decoration: TextDecoration.none,
                        fontFamily: "Customfont") ),
                TypewriterAnimatedText("LOGISTICS",
                    textStyle: TextStyle(color: Colors.black, fontSize: 25.sp,
                        decoration: TextDecoration.none,
                        fontFamily: "Customfont") )

              ],
            ),
          )


        ],
      ),
    );

  }

  void delayAndNavigate() {

      Timer(const Duration(seconds: 6), ()=> Navigator
          .pushReplacement(context, MaterialPageRoute(builder: (context){
           return const AuthChecker();
      })));
  }

}
