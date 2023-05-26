
import 'package:darl_dispatch/Utils/routers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../ConstantHelper/colors.dart';

class AdminManageLoad extends StatefulWidget {
  const AdminManageLoad({Key? key}) : super(key: key);

  @override
  _AdminManageLoadState createState() => _AdminManageLoadState();
}

class _AdminManageLoadState extends State<AdminManageLoad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Manage Loads",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.sp)),
          backgroundColor: Colors.indigo,
        ),
        body: Stack(children: <Widget>[
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/pickupdashbg.png"),
                      fit: BoxFit.cover))),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
              child: Column(
                children: [

                  Container(
                    height: 10.h,
                    child: InkWell(
                      onTap: () {
                        Routers.pushNamed(context, '/register_load');
                      },
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 3.w,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Text(
                                      "Register New Load",
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

                  SizedBox(
                    height: 1.h,
                  ),

                  Container(
                    height: 10.h,
                    child: InkWell(
                      onTap: () {
                        Routers.pushNamed(context, '/loadsAssignedPreview');
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
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
                                    SizedBox(
                                      height: 1.h,
                                    ),
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
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    height: 10.h,
                    child: InkWell(
                      onTap: () {
                        Routers.pushNamed(context, '/registered_loads_Preview');
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
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
                                    SizedBox(
                                      height: 1.h,
                                    ),
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
                                      "Loads already registered",
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
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    height: 10.h,
                    child: InkWell(
                      onTap: () {
                        Routers.pushNamed(context, '/driversOnTrip');
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
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
                                    SizedBox(
                                      height: 1.h,
                                    ),
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
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    height: 10.h,
                    child: InkWell(
                      onTap: () {
                        Routers.pushNamed(context, '/deliveredLoadsPreview');
                      },
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
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
                                    SizedBox(
                                      height: 1.h,
                                    ),
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
        ]));
  }
}
