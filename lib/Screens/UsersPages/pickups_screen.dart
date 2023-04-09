
import 'package:darl_dispatch/Screens/UsersPages/register_load.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../ConstantHelper/colors.dart';
import 'delivered_loads_preview.dart';
import 'drivers_on_trip_screen.dart';
import 'loads_assign_preview.dart';


class PickUps extends StatefulWidget {
  const PickUps({Key? key}) : super(key: key);

  @override
  _PickUpsState createState() => _PickUpsState();
}

class _PickUpsState extends State<PickUps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Pick Ups", style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 6.h),
        child: SingleChildScrollView(
          child: Container(

            child: Column(
              children: [

                Container(
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

                              const Icon(
                                Icons.my_library_add,
                                color: Colors.blue,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1.h,),
                Container(
                  height: 10.h,
                  child: InkWell(onTap: () {
                    PersistentNavBarNavigator.pushNewScreen(context, screen: LoadsAssignedPreview());
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
                              Icon(
                                  Icons.assignment,
                                  color: Colors.blue,
                                size: 30,
                                ),


                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1.h,),
                Container(
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

                              const Icon(
                                Icons.drive_eta,
                                color: Colors.blue,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1.h,),
                Container(
                  height: 10.h,
                  child: InkWell(onTap: () {
                    PersistentNavBarNavigator.pushNewScreen(context, screen:  DeliveredLoadsPreview());
                  },
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

                              const Icon(
                                Icons.check_circle,
                                color: Colors.blue,
                                size: 30,
                              ),
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
        ),
      ),
    );
  }
}


