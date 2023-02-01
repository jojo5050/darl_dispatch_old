import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Constants/colors.dart';

class DriverLoadDelivered extends StatefulWidget {
  const DriverLoadDelivered({Key? key}) : super(key: key);

  @override
  _DriverLoadDeliveredState createState() => _DriverLoadDeliveredState();
}

class _DriverLoadDeliveredState extends State<DriverLoadDelivered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                          child: GestureDetector(
                            onTap: () {
                              //   Routers.pushNamed(context, "/settings");
                            },
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.edit,
                                  color: Colors.green,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Edit",
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
                      PopupMenuItem(
                        value: 1,
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              //   Routers.pushNamed(context, '/faq');
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
                      PopupMenuItem(
                        value: 1,
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              //   Routers.pushNamed(context, '/faq');
                            },
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.text_rotation_none,
                                  color: Colors.green,
                                  size: 25,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "N.A Loads ",
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
            Text("Delivered Loads",
              style: TextStyle(
                  color: AppColors.dashboardtextcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.sp,
                  decoration: TextDecoration.none),),
            SizedBox(height: 4.h,),

            Container(
              height: 35.h,
              child: InkWell(onTap: (){
                /*PersistentNavBarNavigator
                          .pushNewScreen(context, screen: RegisterLoad());*/
              },
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

                              Column(
                                children: [
                                  const CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 20,
                                      child: Icon(Icons.person, color: Colors.white,)),

                                  Text("Josh",
                                    style: TextStyle(color: AppColors.dashboardtextcolor,
                                        fontSize: 14.sp),)
                                ],
                              )

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
                                  fontSize: 17.sp)),
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
                                "Driver: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "Josh",
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
                                "Micheal",
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
              height: 35.h,
              child: InkWell(onTap: (){
                /*PersistentNavBarNavigator
                          .pushNewScreen(context, screen: RegisterLoad());*/
              },
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

                              Column(
                                children: [
                                  const CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 20,
                                      child: Icon(Icons.person, color: Colors.white,)),

                                  Text("Giovanni",
                                    style: TextStyle(color: AppColors.dashboardtextcolor,
                                        fontSize: 14.sp),)
                                ],
                              )

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
                                  fontSize: 17.sp)),
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
              height: 35.h,
              child: InkWell(onTap: (){
                /*PersistentNavBarNavigator
                          .pushNewScreen(context, screen: RegisterLoad());*/
              },
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

                              Column(
                                children: [
                                  const CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 20,
                                      child: Icon(Icons.person, color: Colors.white,)),

                                  Text("Giovanni",
                                    style: TextStyle(color: AppColors.dashboardtextcolor,
                                        fontSize: 14.sp),)
                                ],
                              )

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
                                  fontSize: 17.sp)),
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
          ],

          ),
        ),
      ),
    );
  }
}
