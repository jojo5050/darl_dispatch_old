import 'package:darl_dispatch/Utils/routers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/onboardbg.png"), fit: BoxFit.cover)),

        child: Column(children: [
          SizedBox(height: 12.h,),
          Center(
            child: Text("Welcome", style: TextStyle(color: Colors.white,
                fontSize: 31.sp, fontWeight: FontWeight.normal,
                decoration: TextDecoration.none),),
          ),
          SizedBox(height: 1.h,),
          Center(
            child: Text("Fastest Logistics Company",
              style: TextStyle(color: Colors.white,
                fontSize: 14.sp, fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none),),
          ),
          SizedBox(height: 55.h,),
          ElevatedButton(
            onPressed: () {
              Routers.pushNamed(context, "/login_page");
            },
            style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.white, width: 2.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                primary: Colors.transparent,
                onPrimary: Colors.white,
                splashFactory: InkRipple.splashFactory,
                padding: EdgeInsets.symmetric(
                    horizontal: 25.w, vertical: 2.h)),
            child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 16.sp),),
          ),

          SizedBox(height: 1.h,),

          ElevatedButton(
            onPressed: () {
              Routers.pushNamed(context, "/sign_up_page");
            },
            style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.white, width: 2.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              onPrimary: Colors.white,
              splashFactory: InkRipple.splashFactory,
                primary: Colors.transparent,
                padding: EdgeInsets.symmetric(
                    horizontal: 23.w, vertical: 2.h),),
            child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 16.sp),),
          ),


        ],),
      ),
    );
  }
}
