import 'package:darl_dispatch/Screens/DriversPages/availabe_vehicles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../UsersPages/loads_assign.dart';
import '../UsersPages/pickup_delivered.dart';
import '../UsersPages/pickups_screen.dart';
import '../vehicles_screen.dart';

class DriverHome extends StatefulWidget {
  const DriverHome({Key? key}) : super(key: key);

  @override
  _DriverHomeState createState() => _DriverHomeState();
}

class _DriverHomeState extends State<DriverHome> {
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
                                    "Loads Delivered",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.bold),
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
                                  Container(
                                    child: SvgPicture.asset(
                                        "assets/images/roundcheckIcon.svg"),
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
                                    "Loads Assigned",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.bold),
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
                                    "2",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.sp),
                                  ),
                                  const Icon(
                                    Icons.assignment,
                                    color: Colors.indigo,
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
                                    "Current Balance",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.bold),
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
                                    "\$ 1000",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.sp),
                                  ),
                                 const Icon(Icons.account_balance_wallet, color: Colors.blue,
                                 size: 30,)
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
                                    "Total CashOut",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.bold),
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
                                    "\$ 2,000",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.sp),
                                  ),
                                  Container(
                                    child: SvgPicture.asset(
                                        "assets/images/moneyStraightIcon.svg"),
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
                      InkWell(onTap: (){
                        PersistentNavBarNavigator.pushNewScreen(context, screen: LoadsAssigned());
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
                                  const Center(child: Icon(Icons.assignment, color: Colors.black, size: 40,)),

                                  Text("Loads Assigned", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

                                ],
                              ),
                            )
                        ),
                      ),
                      InkWell(onTap: (){
                        PersistentNavBarNavigator.pushNewScreen(context, screen: PickUpDelivered());
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
                                  const Center(child: Icon(Icons.check_circle, color: Colors.black, size: 40,)),

                                  Text("Loads Delivered", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

                                ],
                              ),
                            )
                        ),
                      ),
                      InkWell(onTap: (){
                        PersistentNavBarNavigator.pushNewScreen(context, screen: AvailableVehicles());
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

                                  Text("Available Trucks", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

                                ],
                              ),
                            )
                        ),
                      ),
                      InkWell(onTap: (){

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
                                      child: Icon(Icons.group, color: Colors.black, size: 40,)),

                                  Text("Dispatchers", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

                                ],
                              ),
                            )
                        ),
                      ),
                      InkWell(onTap: (){

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
                                  const Center(child: Icon(Icons.payments_outlined, color: Colors.black, size: 40,)),

                                  Text("My Pay Roll", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

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
