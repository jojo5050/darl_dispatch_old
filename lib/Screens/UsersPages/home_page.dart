
import 'package:darl_dispatch/Screens/UsersPages/loads_assign.dart';
import 'package:darl_dispatch/Screens/UsersPages/pickup_delivered.dart';
import 'package:darl_dispatch/Screens/UsersPages/pickups_screen.dart';
import 'package:darl_dispatch/Screens/vehicles_screen.dart';
import 'package:darl_dispatch/Utils/routers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                                    "Loads Cancelled",
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
                                    Icons.cancel,
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
                                    "Registered Loads",
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
                                    "10",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.sp),
                                  ),
                                  Container(
                                    child: SvgPicture.asset(
                                        "assets/images/rectCheckIcon.svg"),
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
                                    "NG 100,000",
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
                    /*Card(
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
                    ),*/
                    /*Card(
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
                    ),*/
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
                     PersistentNavBarNavigator.pushNewScreen(
                         context, screen: const PickUps());
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
                              const Center(child: Icon(Icons.my_library_add_rounded, color: Colors.black, size: 40,)),

                              Text("Load Registration", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

                            ],
                          ),
                        )
                      ),
                    ),
                    InkWell(onTap: (){
                      PersistentNavBarNavigator.pushNewScreen(context, screen: Vehicles());
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

                                Text("Vehicle Assigned", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

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
                                    child: Icon(Icons.directions_car, color: Colors.black, size: 40,)),

                                Text("Drivers", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

                              ],
                            ),
                          )
                      ),
                    ),
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
