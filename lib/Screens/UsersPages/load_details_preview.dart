
import 'package:darl_dispatch/Screens/UsersPages/loads_assign_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../ConstantHelper/colors.dart';

class LoadDetailsPreview extends StatefulWidget {
  const LoadDetailsPreview({Key? key}) : super(key: key);

  @override
  _LoadDetailsPreviewState createState() => _LoadDetailsPreviewState();
}

class _LoadDetailsPreviewState extends State<LoadDetailsPreview> {

  String dropDownValue = 'Abraham';
  var items = [
    'Abraham', 'Micheal', 'Jojo', 'Lawrence', 'Peter', 'John'
  ];

  bool checkedValue = false;

  void _allowAssign() {
    // method call here

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                  "Preview Details",
                  style: TextStyle(
                      color: AppColors.dashboardtextcolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
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
                                    Icons.no_transfer,
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
                                        fontSize: 17.sp,
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
              SizedBox(
                height: 2.h,
              ),


              SizedBox(
                height: 4.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Load Information",
                    style: TextStyle(
                        color: AppColors.dashboardtextcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "Rate",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Confirmation",
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
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "F-RT88899W266",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "Rate",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "12345",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "Date",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Registered",
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
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "2023-01-23",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "Load",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Description",
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
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "Iron Rod",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "Weight",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "200 kg",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

               SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Broker Information",
                    style: TextStyle(
                        color: AppColors.dashboardtextcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
              SizedBox(height: 1.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "Broke",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Name",
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
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "Gix Logistics",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                            child: Column(
                              children: [
                                SizedBox(height: 1.h,),
                                Text(
                                  "Broker",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Email",
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
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "example@gmail.com",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "Broker",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Address",
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
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "123, New York",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "Broker",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Phone",
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
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "0123456789",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "PickUp Details",
                    style: TextStyle(
                        color: AppColors.dashboardtextcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "State",
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
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "New York",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "City",
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
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "Bronx",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "ZipCode",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              /*Text(
                                "Code",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),*/

                            ],

                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "00234546",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "Date",
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
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "01/01/2023",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "Time",
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
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "12:00",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Drop Details",
                    style: TextStyle(
                        color: AppColors.dashboardtextcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
              SizedBox(height: 1.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "State",
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
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "New York",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "City",
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
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "Bronx",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "ZipCode",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              /*Text(
                                "Code",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),*/

                            ],

                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "00234546",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "Date",
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
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "01/01/2023",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "Time",
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
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: Text(
                            "03:00",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 2.h,),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Choose a Driver",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  SizedBox(width: 30,),
                  DropdownButton<String>(
                      value: dropDownValue, style: TextStyle(fontSize: 20, color: Colors.black,),
                      icon: Icon(Icons.keyboard_arrow_down_outlined, color: Colors.black, size: 30,),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          dropDownValue = newValue!;
                        });
                      }),
                         Checkbox(
                             side: BorderSide(
                                 color: Colors.black, width: 2),
                              checkColor: Colors.black,
                              activeColor: Colors.green,
                             value: checkedValue,
                             onChanged: (value){
                               setState(() {
                                  checkedValue = value ?? false;
                               });
                         },
                         ),

                ],),
              SizedBox(height: 4.h,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide.none)),
                    onPressed: () {
                    Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                    )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo[500],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide.none)),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Load has been saved successfully"),));
                      },
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                      )),
                ElevatedButton(

                    onPressed: checkedValue ? _allowAssign : null,
                    style: ElevatedButton.styleFrom(
                        onSurface: Colors.grey,
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide.none)),
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                      child: Text(
                        "Assign",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                    )),
              ],),

              SizedBox(height: 4.h,),


            ],
          ),
        ),
      ),
    );
  }
}
