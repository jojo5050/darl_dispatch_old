import 'package:darl_dispatch/Utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/onboardbg.png"), fit: BoxFit.cover))),

               SingleChildScrollView(
                child: Container(
                  color: Colors.transparent,
                  child: Column(children: <Widget>[
                    SizedBox(height: 12.h,),
                    Center(
                      child: Text("Welcome", style: TextStyle(color: Colors.white,
                          fontSize: 31.sp, fontWeight: FontWeight.normal, fontFamily: 'Interfont',
                          decoration: TextDecoration.none),),
                    ),
                    SizedBox(height: 1.h,),

                    Center(
                      child: Text("Smart Logistics Company",
                        style: TextStyle(color: Colors.white,
                            fontSize: 16.sp, fontWeight: FontWeight.bold, fontFamily: 'Interfont',
                            decoration: TextDecoration.none),),
                    ),
                    SizedBox(height: 60.h,),

                    ElevatedButton(
                      onPressed: () {
                        Routers.pushNamed(context, "/sign_up_page");

                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        //  onPrimary: Colors.white,
                        //  splashFactory: InkRipple.splashFactory,
                        primary: Colors.blue,
                        padding: EdgeInsets.symmetric(
                            horizontal: 28.w, vertical: 2.h),),
                      child: Text("Get Started",
                        style: TextStyle(color: Colors.white,
                            fontSize: 16.sp, fontWeight: FontWeight.bold),),

                    ),

                  ],),
                ),
              ),
        ],
      ),

    );
  }

  Future<bool> willPopController() async {
    return (await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        //  title: new Text('Are you sure?'),
        content: new Text('Do you want to exit the App'),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              TextButton(
                onPressed: () => exitApp(),
                child: new Text('Yes'),
              ),
            ],
          ),
        ],
      ),
    )) ??
        false;
  }

  exitApp() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    });
  }
}
