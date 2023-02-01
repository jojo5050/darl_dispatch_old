import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

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
                TypewriterAnimatedText("Fast and Reliable",
                  textStyle: TextStyle(color: Colors.black, fontSize: 20.sp,
                      decoration: TextDecoration.none,
                      fontFamily: "Customfont") ),
                TypewriterAnimatedText("Logistics",
                    textStyle: TextStyle(color: Colors.black, fontSize: 30.sp,
                        decoration: TextDecoration.none,
                        fontFamily: "Customfont") )

              ],
            ),
          )


        ],
      ),
    );

  }

}
