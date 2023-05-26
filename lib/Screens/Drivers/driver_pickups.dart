import 'package:flutter/material.dart';

import 'package:darl_dispatch/Screens/Admin/Loads/register_new_load.dart';
import 'package:darl_dispatch/Utils/routers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../ConstantHelper/colors.dart';

class DriverPickUps extends StatefulWidget {
  const DriverPickUps({Key? key}) : super(key: key);

  @override
  _DriverPickUpsState createState() => _DriverPickUpsState();
}

class _DriverPickUpsState extends State<DriverPickUps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pick Ups",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.black,
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
                       // Routers.pushNamed(context, '/registered_loads_Preview');
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
                                      "Assigned Loads",
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
                      //  Routers.pushNamed(context, '/driversOnTrip');
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
                                      "Delivered Loads",
                                      style: TextStyle(
                                          color: AppColors.dashboardtextcolor,
                                          fontSize: 19.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Text(
                                      "Loads already delivered",
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
                ],
              ),
            ),
          ),
        ]));
  }
}
