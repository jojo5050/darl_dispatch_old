import 'package:darl_dispatch/Utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: willpopControl,
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10.h,),
                Text(
                  "Success!",
                  style: TextStyle(color: Colors.green,
                      fontWeight: FontWeight.bold, fontSize: 30.sp,
                      fontFamily: "Interfont",
                      decoration: TextDecoration.none),
                ),
                SizedBox(height: 1.h,),
                Text("Your account has been created",
                  style: TextStyle(color: Colors.black,
                      fontSize: 16.sp,
                      fontFamily: "Interfont",
                      decoration: TextDecoration.none),),

                Stack(children: [
                  Container(
                    height: 50.h,
                    width: 50.w,
                    decoration:  BoxDecoration(
                        border: Border.all(color: Colors.green, width: 3),
                        shape: BoxShape.circle),),

                  const Positioned(
                      left: 45,
                      bottom: 145,
                      child: Icon(Icons.check, color: Colors.green, size: 100,))

                ],),

                SizedBox(height: 15.h,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.indigo[500],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide.none)),
                    onPressed: () {
                      Routers.pushNamed(context, '/landingPage_manager');
                    },
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 2.h),
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white,
                            fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                ),
              ],
            ),
          ),
        ),
      );
  }

  Future<bool> willpopControl() async {
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
