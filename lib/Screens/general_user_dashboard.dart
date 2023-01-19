import 'package:darl_dispatch/Constants/colors.dart';
import 'package:darl_dispatch/Utils/routers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GeneralUserDashboard extends StatefulWidget {
  const GeneralUserDashboard({Key? key}) : super(key: key);

  @override
  _GeneralUserDashboardState createState() => _GeneralUserDashboardState();
}

class _GeneralUserDashboardState extends State<GeneralUserDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/generalDashBoardBg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 35, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      radius: 20,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Dashboard",
                      style: TextStyle(color: Colors.blue, fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
              //  height: MediaQuery.of(context).size.height / 2,
                height: 25.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [Colors.red, Colors.yellow],
                            begin: Alignment.centerLeft, end: Alignment.centerRight
                            ),
                           // color: AppColors.driversCardColor,
                            borderRadius: BorderRadius.circular(25)),
                        width: 80.w,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Text(
                                    "Drivers",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 27.sp),
                                  ),
                                )),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.sp),
                                  ),
                                  const Icon(
                                    Icons.directions_car,
                                    color: Colors.white,
                                    size: 40,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors:
                            [Colors.lightBlueAccent, Colors.greenAccent],
                                begin: Alignment.centerLeft, end: Alignment.centerRight
                            ),

                            borderRadius: BorderRadius.circular(25)),
                        width: 80.w,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Text(
                                    "Employees",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 27.sp),
                                  ),
                                )),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.sp),
                                  ),
                                  const Icon(
                                    Icons.group,
                                    color: Colors.white,
                                    size: 40,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors:
                            [Colors.deepOrangeAccent, Colors.lightGreen],
                                begin: Alignment.centerLeft, end: Alignment.centerRight
                            ),
                            borderRadius: BorderRadius.circular(25)),
                        width: 80.w,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Text(
                                    "New Staff",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 27.sp),
                                  ),
                                )),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.sp),
                                  ),
                                  const Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 40,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Container(

                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors:
                            [Colors.indigo, Colors.yellow],
                                begin: Alignment.centerLeft, end: Alignment.centerRight
                            ),

                            borderRadius: BorderRadius.circular(25)),
                        width: 80.w,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Text(
                                    "Trucks",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 27.sp),
                                  ),
                                )),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.sp),
                                  ),
                                  const Icon(
                                    Icons.local_shipping,
                                    color: Colors.white,
                                    size: 40,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors:
                            [Colors.lightBlueAccent, Colors.greenAccent],
                                begin: Alignment.centerLeft, end: Alignment.centerRight
                            ),
                            borderRadius: BorderRadius.circular(25)),
                        width: 80.w,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Text(
                                    "Trailers",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 27.sp),
                                  ),
                                )),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.sp),
                                  ),
                                  const Icon(
                                    Icons.local_shipping_outlined,
                                    color: Colors.white,
                                    size: 40,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors:
                            [Colors.purple, Colors.deepPurpleAccent],
                                begin: Alignment.centerLeft, end: Alignment.centerRight
                            ),
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(25)),
                        width: 80.w,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Text(
                                    "Income",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 27.sp),
                                  ),
                                )),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$ 200",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.sp),
                                  ),
                                  const Icon(
                                    Icons.credit_card,
                                    color: Colors.white,
                                    size: 40,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 5.h,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: GridView(gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  children: [
                    InkWell(onTap: () {
                      Routers.pushNamed(context, "/pickups");
                    },
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),

                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(height: 3.h,),
                              const Center(child: Icon(Icons.local_shipping, color: Colors.black, size: 40,)),

                              Text("Pick Ups", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

                            ],
                          ),
                        )
                      ),
                    ),
                    InkWell(onTap: (){
                      Routers.pushNamed(context, "/payout");
                    },
                      child: Card(
                        elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),

                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(height: 3.h,),
                                const Center(child: Icon(Icons.credit_card, color: Colors.black, size: 40,)),

                                Text("Pay Out", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

                              ],
                            ),
                          )
                      ),
                    ),
                    InkWell(onTap: (){
                      Routers.pushNamed(context, "/vehicles");

                    },
                      child: Card(
                        elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),

                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(height: 3.h,),
                                const Center(
                                    child: Icon(Icons.directions_car, color: Colors.black, size: 40,)),

                                Text("Vehicles", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

                              ],
                            ),
                          )
                      ),
                    ),
                    InkWell(onTap: (){
                      Routers.pushNamed(context, "/company_users");
                    },
                      child: Card(
                        elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),

                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(height: 3.h,),
                                const Center(child: Icon(Icons.group, color: Colors.black, size: 40,)),

                                Text("Company Users", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

                              ],
                            ),
                          )
                      ),
                    ),
                    InkWell(onTap: (){
                      Routers.pushNamed(context, "/report");
                    },
                      child: Card(
                        elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),

                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(height: 3.h,),
                                const Center(child: Icon(Icons.file_copy_sharp, color: Colors.black, size: 40,)),

                                Text("Report", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

                              ],
                            ),
                          )
                      ),
                    ),
                    InkWell(onTap: (){
                      Routers.pushNamed(context, "/drivers_on_trip");
                    },
                      child: Card(
                        elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),

                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(height: 3.h,),
                                const Center(child: Icon(Icons.person, color: Colors.black, size: 40,)),

                                Text("Drivers on trip", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

                              ],
                            ),
                          )
                      ),
                    )

                  ],

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
