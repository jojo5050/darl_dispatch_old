import 'package:darl_dispatch/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Vehicles extends StatefulWidget {
  const Vehicles({Key? key}) : super(key: key);

  @override
  _VehiclesState createState() => _VehiclesState();
}

class _VehiclesState extends State<Vehicles> {
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

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Vehicles",
                    style:
                    TextStyle(color: AppColors.dashboardtextcolor,
                        fontSize: 25.sp, decoration: TextDecoration.none),
                  ),
                ],
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
                                "Register Vehicle",
                                style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                "Register or Assign vehicle",
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
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
                                "Vehicles Assigned",
                                style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                "Vehicles already assigned",
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
                                "Vehicles Workload",
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

          ],
        ),
     ),


    );
  }
}
