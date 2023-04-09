
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../ConstantHelper/colors.dart';

class DriversOnTrip extends StatefulWidget {
  const DriversOnTrip({Key? key}) : super(key: key);

  @override
  _DriversOnTripState createState() => _DriversOnTripState();
}

class _DriversOnTripState extends State<DriversOnTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child:
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    InkWell(onTap: (){
                      Navigator.of(context).pop();
                    },
                      child: SvgPicture.asset(
                        "assets/images/backarrowicon.svg",
                        height: 25,
                        width: 25,
                      ),
                    ),
                    Text(
                      "Drivers on Trip",
                      style:
                      TextStyle(color: AppColors.dashboardtextcolor,
                          fontSize: 20.sp, decoration: TextDecoration.none, fontWeight: FontWeight.bold),
                    ),

                    Container(),
                  ]

                  ),
                ),

                SizedBox(height: 5.h,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w,),
                  child: Container(
                    height: 10.h,
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
                                    "Joshua Ehiatue",
                                    style: TextStyle(
                                        color: AppColors.dashboardtextcolor,
                                        fontSize: 19.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    "Trailer",
                                    style: TextStyle(
                                        color: AppColors.dashboardtextcolor,
                                        fontSize: 15.sp),
                                  ),

                                ],
                              ),

                              const CircleAvatar(
                                radius: 20,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                              )
                            ],
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
                                    "Mohammad parker",
                                    style: TextStyle(
                                        color: AppColors.dashboardtextcolor,
                                        fontSize: 19.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    "Trailer",
                                    style: TextStyle(
                                        color: AppColors.dashboardtextcolor,
                                        fontSize: 15.sp),
                                  ),

                                ],
                              ),

                              const CircleAvatar(
                                radius: 20,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
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
