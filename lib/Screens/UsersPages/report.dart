
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../ConstantHelper/colors.dart';


class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                      "Report",
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
                                  "Registered Staff",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  "Number of Active Staff",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 15.sp),
                                ),

                              ],
                            ),

                            Container(
                              child: SvgPicture.asset(
                                  "assets/images/personEditIcon.svg"),
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
                                  "Registered Drivers",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  "Number of Active Drivers",
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
                                  "Registered Vehicles",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  "Number of Vehicles Registered",
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
                                  "Registered Loads",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  "Number of Loads Registered",
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
                                  "Registered Shippers",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  "Number of Shippers Registered",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 15.sp),
                                ),

                              ],
                            ),

                            Container(
                              child: SvgPicture.asset(
                                  "assets/images/shippersIcon.svg"),
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
                                  "Registered Admins",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  "Number of Admin Registered",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 15.sp),
                                ),

                              ],
                            ),

                            Container(
                              child: SvgPicture.asset(
                                  "assets/images/personEditIcon.svg"),
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
                                  "Expenditures",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  "Total Expenditures",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 15.sp),
                                ),

                              ],
                            ),

                            Container(
                              child: SvgPicture.asset(
                                  "assets/images/expenditureIcon.svg"),
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
                                  "Pay-Outs",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  "Total Payout",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 15.sp),
                                ),

                              ],
                            ),

                            Container(
                              child: SvgPicture.asset(
                                  "assets/images/payOutDollarIcon.svg"),
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
                                  "Vehicle Income",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  "Total vehicle income",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 15.sp),
                                ),

                              ],
                            ),

                            Container(
                              child: SvgPicture.asset(
                                  "assets/images/moneyWaveIcon.svg"),
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
                                  "Company Income",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  "Total company income",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 15.sp),
                                ),

                              ],
                            ),

                            Container(
                              child: SvgPicture.asset(
                                  "assets/images/moneyStraightIcon.svg"),
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
      ),

    );
  }
}
