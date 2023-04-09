
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../ConstantHelper/colors.dart';

class Vehicles extends StatefulWidget {
  const Vehicles({Key? key}) : super(key: key);

  @override
  _VehiclesState createState() => _VehiclesState();
}

class _VehiclesState extends State<Vehicles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 8.h),
        child: Column(
            children: [
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
                    "Assigned Vehicles",
                    style:
                    TextStyle(color: AppColors.dashboardtextcolor,
                        fontSize: 20.sp, decoration: TextDecoration.none, fontWeight: FontWeight.bold),
                  ),

                  Container()

                ]),
              SizedBox(height: 3.h,),

              Container(
                  height: 13.h,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 10,
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 2.h,),
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
                                      "TRAILER NO:",
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
                                SizedBox(height: 1.h,),
                                Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Assigned to:",
                                      style: TextStyle(
                                          color: AppColors.dashboardtextcolor,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 2.w,),
                                    Text(
                                      " Mohammed",
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
                        PopupMenuButton(
                            color: Colors.black,
                            elevation: 20,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            icon: const Center(
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                value: 1,
                                child: Container(
                                  child: GestureDetector(
                                    onTap: () {
                                      //   Routers.pushNamed(context, "/settings");
                                    },
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.add_task_outlined,
                                          color: Colors.green,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Re-Assign",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                ),
              Container(
                height: 13.h,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 10,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 2.h,),
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
                                    "TRAILER NO:",
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
                              SizedBox(height: 1.h,),
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Assigned to:",
                                    style: TextStyle(
                                        color: AppColors.dashboardtextcolor,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 2.w,),
                                  Text(
                                    " Mohammed",
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
                      PopupMenuButton(
                          color: Colors.black,
                          elevation: 20,
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          icon: const Center(
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 1,
                              child: Container(
                                child: GestureDetector(
                                  onTap: () {
                                    //   Routers.pushNamed(context, "/settings");
                                  },
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.add_task_outlined,
                                        color: Colors.green,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Re-Assign",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
              Container(
                height: 13.h,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 10,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 2.h,),
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
                                    "TRAILER NO:",
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
                              SizedBox(height: 1.h,),
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Assigned to:",
                                    style: TextStyle(
                                        color: AppColors.dashboardtextcolor,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 2.w,),
                                  Text(
                                    " Mohammed",
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
                      PopupMenuButton(
                          color: Colors.black,
                          elevation: 20,
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          icon: const Center(
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 1,
                              child: Container(
                                child: GestureDetector(
                                  onTap: () {
                                    //   Routers.pushNamed(context, "/settings");
                                  },
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.add_task_outlined,
                                        color: Colors.green,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Re-Assign",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),

            ],
          ),
      ),
    );

  }
}
