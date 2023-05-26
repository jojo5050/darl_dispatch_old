import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../ConstantHelper/colors.dart';


class AssingedLoadsMain  extends StatefulWidget {
  const AssingedLoadsMain({Key? key}) : super(key: key);

  @override
  State<AssingedLoadsMain> createState() => _AssingedLoadsMainState();
}

class _AssingedLoadsMainState extends State<AssingedLoadsMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assigned Loads", style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
        child: Column(
          children: [
            Container(
              height: 75.h,
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
                          SizedBox(height: 1.h,),
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
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Broker:",  style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp, fontWeight: FontWeight.bold)),
                              SizedBox(width: 2.w,),

                              Text("LGTI Logistics",  style: TextStyle(
                                  color: AppColors.dashboardtextcolor,
                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
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
                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
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

                              Text("Stock Fish",  style: TextStyle(
                                  color: AppColors.dashboardtextcolor,
                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
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
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
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
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
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
                                "10/20/23",
                                style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
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
                                "Drop Time: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "10:90",
                                style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
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
                                "2345678",
                                style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          const Divider(
                            color: Colors.black,
                            height: 10,
                            thickness: 5,
                            indent: 100,
                            endIndent: 100,
                          ),

                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Pickup State: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "USA",
                                style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Pickup City: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "Bronx",
                                style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Pickup Date: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "12/20/20",
                                style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
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
                                "Pickup Time: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "12:00",
                                style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
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
                                "Pickup Zipcode: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "67678999",
                                style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.h,),

                          Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 15,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                              child: Column(
                                children: [
                                  Row(mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Assigned by:", style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.sp, fontWeight: FontWeight.bold),),
                                      SizedBox(width: 2.w,),
                                      Text("Pablo", style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17.sp, fontWeight: FontWeight.bold),)
                                    ],),
                                  SizedBox(height: 1.h,),
                                  Row(mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Assigned to:", style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.sp, fontWeight: FontWeight.bold),),
                                      SizedBox(width: 2.w,),
                                      Text("Giovanni", style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17.sp, fontWeight: FontWeight.bold),)
                                    ],),
                                ],
                              ),
                            ),
                          )
                        ],
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
