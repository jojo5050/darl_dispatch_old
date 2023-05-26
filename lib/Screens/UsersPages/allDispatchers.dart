import 'package:darl_dispatch/Utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../ConstantHelper/colors.dart';
import '../clientProfilePage.dart';

class AllDispatcher extends StatefulWidget {
  const AllDispatcher({Key? key}) : super(key: key);

  @override
  State<AllDispatcher> createState() => _AllDispatcherState();
}

class _AllDispatcherState extends State<AllDispatcher> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              InkWell(onTap: (){
                Navigator.of(context).pop();
              },
                child: SvgPicture.asset(
                  "assets/images/backarrowicon.svg",
                  height: 25,
                  width: 25,
                ),
              ),

              Text("Dispatchers", style:
              TextStyle(color: AppColors.dashboardtextcolor,
                  fontSize: 20.sp, decoration: TextDecoration.none, fontWeight: FontWeight.bold),),

              Container()

            ]),


            SizedBox(height: 2.h,),
            InkWell(onTap: () {
              Routers.pushNamed(context, '/clientProfilePage');

            },
              child: Container(
                height: 10.h,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 1.h,),
                              Text(
                                "Pablo Collins",
                                style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                "# 00112",
                                style: TextStyle(
                                    color: AppColors.dashboardtextcolor,
                                    fontSize: 15.sp),
                              ),

                            ],
                          ),

                          const CircleAvatar(
                            radius: 20,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 10.h,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 1.h,),
                            Text(
                              "Henry Mark",
                              style: TextStyle(
                                  color: AppColors.dashboardtextcolor,
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              "#09099",
                              style: TextStyle(
                                  color: AppColors.dashboardtextcolor,
                                  fontSize: 15.sp),
                            ),

                          ],
                        ),

                        const CircleAvatar(
                          radius: 20,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 10.h,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 1.h,),
                            Text(
                              "Josh Ehis",
                              style: TextStyle(
                                  color: AppColors.dashboardtextcolor,
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              "# 00134",
                              style: TextStyle(
                                  color: AppColors.dashboardtextcolor,
                                  fontSize: 15.sp),
                            ),

                          ],
                        ),

                        const CircleAvatar(
                          radius: 20,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
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
