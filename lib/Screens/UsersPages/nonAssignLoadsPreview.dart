import 'package:darl_dispatch/Screens/UsersPages/non_assigned_loads_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../ConstantHelper/colors.dart';
import 'loads_assign_preview.dart';

class NonAssignLoadsPreview extends StatefulWidget {
  const NonAssignLoadsPreview({Key? key}) : super(key: key);

  @override
  State<NonAssignLoadsPreview> createState() => _NonAssignLoadsPreviewState();
}

class _NonAssignLoadsPreviewState extends State<NonAssignLoadsPreview> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: SvgPicture.asset(
                "assets/images/backarrowicon.svg",
                height: 25,
                width: 25,
              ),
            ),
            Text(
              "Non-Assigned Loads",
              style: TextStyle(
                  color: AppColors.dashboardtextcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 19.sp,
                  decoration: TextDecoration.none),
            ),

            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [Colors.indigo, Colors.lightBlueAccent],
                      begin: Alignment.centerLeft, end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: PopupMenuButton(
                  color: Colors.black,
                  elevation: 20,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  icon: const Center(
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  itemBuilder: (context) => [

                    PopupMenuItem(
                      value: 1,
                      child: Container(
                        child: InkWell(
                          onTap: () {
                              PersistentNavBarNavigator.pushNewScreen(context, screen: LoadsAssignedPreview());
                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Assigned Loads",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ]),

             SizedBox(height: 4.h,),
          InkWell(onTap: () {
            PersistentNavBarNavigator.pushNewScreen(context, screen: NonAssignedLoadsMain());
          },
            child: Container(
              height: 12.h,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 2.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "T-RT88899W266",
                              style: TextStyle(
                                  color: AppColors.dashboardtextcolor,
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Load Desc:",  style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp, fontWeight: FontWeight.bold)),
                            SizedBox(width: 2.w,),

                            Text("Iron Rods",  style: TextStyle(
                                color: AppColors.dashboardtextcolor,
                                fontSize: 17.sp)),
                          ],

                        ),

                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("View more...",
                              style: TextStyle(color: AppColors.dashboardtextcolor,
                                  fontSize: 14.sp, fontWeight: FontWeight.bold),)
                          ],)


                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          InkWell(onTap: () {
          //  PersistentNavBarNavigator.pushNewScreen(context, screen: DeliveredLoadsMain());
          },
            child: Container(
              height: 12.h,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 2.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "T-RT88899W266",
                              style: TextStyle(
                                  color: AppColors.dashboardtextcolor,
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("BOL NO:",  style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp, fontWeight: FontWeight.bold)),
                            SizedBox(width: 2.w,),

                            Text("123456",  style: TextStyle(
                                color: AppColors.dashboardtextcolor,
                                fontSize: 17.sp)),
                          ],

                        ),

                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("View more...",
                              style: TextStyle(color: AppColors.dashboardtextcolor,
                                  fontSize: 14.sp, fontWeight: FontWeight.bold),)
                          ],)


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
