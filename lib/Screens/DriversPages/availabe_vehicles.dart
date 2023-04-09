import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../ConstantHelper/colors.dart';

class AvailableVehicles extends StatefulWidget {
  const AvailableVehicles({Key? key}) : super(key: key);

  @override
  _AvailableVehiclesState createState() => _AvailableVehiclesState();
}

class _AvailableVehiclesState extends State<AvailableVehicles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
            child: SingleChildScrollView(
              child: Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  InkWell(onTap: (){
                    Navigator.of(context).pop();
                  },
                    child: SvgPicture.asset(
                      "assets/images/backarrowicon.svg",
                      height: 25,
                      width: 25,
                    ),
                  ),
                      Text("Available Vehicles", style:  TextStyle(
                          color: AppColors.dashboardtextcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.sp,
                          decoration: TextDecoration.none),),
                      Container()
                ]

                ),


                SizedBox(height: 2.h,),

                Container(
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
                        child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 1.h,),
                                Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "NUM PLATE:",
                                      style: TextStyle(
                                          color: AppColors.dashboardtextcolor,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 2.w,),
                                    Text(
                                      " 123458",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "VEHICLE ID:",
                                      style: TextStyle(
                                          color: AppColors.dashboardtextcolor,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 2.w,),
                                    Text(
                                      " 123458",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                      ),
                    ),
                  ),
                ),
                Container(
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
                        child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 1.h,),
                                Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "NUM PLATE:",
                                      style: TextStyle(
                                          color: AppColors.dashboardtextcolor,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 2.w,),
                                    Text(
                                      "123458",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "VEHICLE ID:",
                                      style: TextStyle(
                                          color: AppColors.dashboardtextcolor,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 2.w,),
                                    Text(
                                      " 098765",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                      ),
                    ),
                  ),
                ),
                Container(
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 1.h,),
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "NUM PLATE:",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 2.w,),
                                Text(
                                  " 123458",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "VEHICLE ID:",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 2.w,),
                                Text(
                                  " 123458",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 1.h,),
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "NUM PLATE:",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 2.w,),
                                Text(
                                  " 123458",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "VEHICLE ID:",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 2.w,),
                                Text(
                                  " 123458",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),



              ],

              ),
            ),
          ),


      );
  }
}
