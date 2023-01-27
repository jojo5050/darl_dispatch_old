import 'package:darl_dispatch/Constants/colors.dart';
import 'package:darl_dispatch/Screens/drivers_on_trip_screen.dart';
import 'package:darl_dispatch/Screens/register_load.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Utils/routers.dart';

class PickUps extends StatefulWidget {
  const PickUps({Key? key}) : super(key: key);

  @override
  _PickUpsState createState() => _PickUpsState();
}

class _PickUpsState extends State<PickUps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/pickupdashbg.png"),
                fit: BoxFit.cover),
          ),
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    InkWell(onTap: (){
                      Navigator.of(context).pop();
                    },
                      child: SvgPicture.asset(
                        "assets/images/backarrowicon.svg",
                        height: 25,
                        width: 25,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Hi Joshua",
                        style:
                            TextStyle(color: AppColors.dashboardtextcolor,
                                fontSize: 16.sp, decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ),
               /* SizedBox(
                  height: 2.h,
                ),*/
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Pick Ups",
                        style:
                            TextStyle(color: AppColors.dashboardtextcolor,
                                fontSize: 25.sp, decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w,),
                  child: Container(
                    height: 10.h,
                    child: InkWell(onTap: (){
                      PersistentNavBarNavigator
                          .pushNewScreen(context, screen: RegisterLoad());
                    },
                      child: Card(
                        elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 1.h,),
                                    Text(
                                      "Register Load",
                                      style: TextStyle(
                                          color: AppColors.dashboardtextcolor,
                                          fontSize: 19.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Text(
                                      "Register or Assign loads to driver",
                                      style: TextStyle(
                                          color: AppColors.dashboardtextcolor,
                                          fontSize: 15.sp),
                                    ),

                                  ],
                                ),

                                Container(
                                  child: SvgPicture.asset(
                                      "assets/images/registercarIcon.svg"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w,),
                  child: Container(
                    height: 10.h,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      elevation: 10,
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 1.h,),
                                  Text(
                                    "Loads Assigned",
                                    style: TextStyle(
                                        color: AppColors.dashboardtextcolor,
                                        fontSize: 19.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    "Loads already assigned",
                                    style: TextStyle(
                                        color: AppColors.dashboardtextcolor,
                                        fontSize: 15.sp),
                                  ),

                                ],
                              ),

                              Container(
                                child: SvgPicture.asset(
                                    "assets/images/rectCheckIcon.svg"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Container(
                    height: 10.h,
                    child: InkWell(onTap: (){
                     PersistentNavBarNavigator
                         .pushNewScreen(context, screen: DriversOnTrip());
                    },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 1.h,),
                                    Text(
                                      "Active Drivers",
                                      style: TextStyle(
                                          color: AppColors.dashboardtextcolor,
                                          fontSize: 19.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Text(
                                      "Drivers on Duty",
                                      style: TextStyle(
                                          color: AppColors.dashboardtextcolor,
                                          fontSize: 15.sp),
                                    ),

                                  ],
                                ),

                                Container(
                                  child: SvgPicture.asset(
                                      "assets/images/carIcon.svg"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Container(
                    height: 10.h,
                    child: Card(
                      elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 1.h,),
                                  Text(
                                    "Pick Up Delivered",
                                    style: TextStyle(
                                        color: AppColors.dashboardtextcolor,
                                        fontSize: 19.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    "Completed Deliveries",
                                    style: TextStyle(
                                        color: AppColors.dashboardtextcolor,
                                        fontSize: 15.sp),
                                  ),

                                ],
                              ),

                              Container(
                                child: SvgPicture.asset(
                                    "assets/images/roundcheckIcon.svg"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ),

    );
  }
}
