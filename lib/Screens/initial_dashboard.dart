import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Utils/localstorage.dart';
import '../Utils/routers.dart';

class InitialDashboard extends StatefulWidget {
  const InitialDashboard({Key? key}) : super(key: key);

  @override
  State<InitialDashboard> createState() => _InitialDashboardState();
}

class _InitialDashboardState extends State<InitialDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
                children: [
                  SizedBox(height: 15.h,),

                  Text("WELLCOME", style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold, fontSize: 20.sp),),
                  SizedBox(height: 5.h,),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                    child: Text("An Admin will assign a role to you shortly, then you can login again with your email and password.",

                      style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.normal, fontSize: 18.sp),),
                  ),

                  SizedBox(height: 40.h,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide.none)),
                      onPressed: () {
                        signOut(context);
                       // Routers.pushNamed(context, '/login_page');
                      },
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 25.w, vertical: 2.h),
                        child: Text(
                          "LogOut",
                          style: TextStyle(color: Colors.white, fontSize: 14.sp),
                        ),
                      )),

                ],

          ),
        ),
      ),
    );
  }

  void signOut(BuildContext context)  async {
    LocalStorage().store("token", "");

    Routers.replaceAllWithName(context, '/login_page');
  }
}
