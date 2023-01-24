import 'package:darl_dispatch/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoadDetails extends StatefulWidget {
  const LoadDetails({Key? key}) : super(key: key);

  @override
  _LoadDetailsState createState() => _LoadDetailsState();
}

class _LoadDetailsState extends State<LoadDetails> {
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
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue[700],
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
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Edit",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.sp,
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
                                        Icons.settings,
                                        color: Colors.green,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Settings",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.sp,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Load Details",
                    style: TextStyle(
                        color: AppColors.dashboardtextcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.sp,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Registered by Peter",
                    style: TextStyle(
                        color: AppColors.dashboardtextcolor,
                        fontSize: 16.sp,
                        decoration: TextDecoration.none),
                  ),
                ],
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
                      width: MediaQuery.of(context).size.width / 2,
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
                      width: MediaQuery.of(context).size.width / 2,
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
                      width: MediaQuery.of(context).size.width / 2,
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
                      width: MediaQuery.of(context).size.width / 2,
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
                      width: MediaQuery.of(context).size.width / 2,
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
                    "Shipper Information",
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
                                "Shipper",
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
                      width: MediaQuery.of(context).size.width / 2,
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
                                  "Shipper",
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
                      width: MediaQuery.of(context).size.width / 2,
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
                                "Shipper",
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
                      width: MediaQuery.of(context).size.width / 2,
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
                                "Shipper",
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
                      width: MediaQuery.of(context).size.width / 2,
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
            ],
          ),
        ),
      ),
    );
  }
}
