import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Constants/colors.dart';

class DriverDeliveredLoadsMain extends StatefulWidget {
  const DriverDeliveredLoadsMain({Key? key}) : super(key: key);

  @override
  State<DriverDeliveredLoadsMain> createState() => _DriverDeliveredLoadsMainState();
}

class _DriverDeliveredLoadsMainState extends State<DriverDeliveredLoadsMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Delivered", style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold),),
        //   Text("Delivered", style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 15.h,
                child: InkWell(onTap: (){
                  /*PersistentNavBarNavigator
                              .pushNewScreen(context, screen: RegisterLoad());*/
                },
                  child: Card(
                    color: Colors.grey,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 1.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "T-RT88899W266",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.bold),
                                ),

                                Column(
                                  children: [
                                    const CircleAvatar(
                                        backgroundColor: Colors.green,
                                        radius: 20,
                                        child: Icon(Icons.person, color: Colors.white,)),

                                    Text("Giovanni",
                                      style: TextStyle(color: Colors.white,
                                          fontSize: 14.sp, fontWeight: FontWeight.bold),)
                                  ],
                                )

                              ],
                            ),
                            SizedBox(
                              height: 1.h,
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
                                    color: Colors.white,
                                    fontSize: 17.sp)),
                              ],

                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 52.h,
                child: InkWell(onTap: (){
                  /*PersistentNavBarNavigator
                              .pushNewScreen(context, screen: RegisterLoad());*/
                },
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 1.h,),

                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Broker:",  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold)),
                                SizedBox(width: 2.w,),

                                Text("LGTI Logistics",  style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 17.sp)),
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
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Drop State: ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 2.w,),
                                Text(
                                  "New York",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 17.sp),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Drop City: ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 2.w,),
                                Text(
                                  "Bronx",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 17.sp),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Drop ZipCode: ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 2.w,),
                                Text(
                                  "1234566",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 17.sp),
                                ),
                              ],
                            ),
                            SizedBox(height: 1.h,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Drop Date: ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 2.w,),
                                Text(
                                  "10/5/99",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 17.sp),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 1.h,
                            ),

                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Drop Time:",  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold)),
                                SizedBox(width: 2.w,),

                                Text("12:88",  style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 17.sp)),
                              ],

                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Pickup State:",  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold)),
                                SizedBox(width: 2.w,),

                                Text("NY",  style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 17.sp)),
                              ],

                            ),
                            SizedBox(height: 1.h,),
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Pickup City:",  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold)),
                                SizedBox(width: 2.w,),

                                Text("Bronx",  style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 17.sp)),
                              ],

                            ),
                            SizedBox(
                              height: 1.h,
                            ),

                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Pickup ZipCode:",  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold)),
                                SizedBox(width: 2.w,),

                                Text("123456",  style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 17.sp)),
                              ],

                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Pickup Date:",  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold)),
                                SizedBox(width: 2.w,),

                                Text("12/22/33",  style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 17.sp)),
                              ],

                            ),
                            SizedBox(
                              height: 1.h,
                            ),

                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Pickup Time:",  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold)),
                                SizedBox(width: 2.w,),

                                Text("12:00",  style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 17.sp)),
                              ],

                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Driver: ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 2.w,),
                                Text(
                                  "Giovanni",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 17.sp),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Dispatcher: ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 2.w,),
                                Text(
                                  "Fumilayo",
                                  style: TextStyle(
                                      color: AppColors.dashboardtextcolor,
                                      fontSize: 17.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 10.h,
                child: InkWell(onTap: (){
                  /*PersistentNavBarNavigator
                              .pushNewScreen(context, screen: RegisterLoad());*/
                },
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 1.h,),
                            Text(
                              "PAPER WORK:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.bold),
                            ),

                            SizedBox(
                              height: 1.h,
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("ATTACHED",  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold)),
                              ],

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
    );
  }
}
