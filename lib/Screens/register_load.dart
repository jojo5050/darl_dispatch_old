import 'package:darl_dispatch/Constants/colors.dart';
import 'package:darl_dispatch/Screens/load_details_preview.dart';
import 'package:darl_dispatch/Utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterLoad extends StatefulWidget {
  const RegisterLoad({Key? key}) : super(key: key);

  @override
  _RegisterLoadState createState() => _RegisterLoadState();
}

class _RegisterLoadState extends State<RegisterLoad> {
    bool _isVisibleForPickup = false;
    bool _nextIsVisibleForPickup = false;
    bool _isVisibleForDrop = false;
    bool _nextIsVisibleForDrop = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h
          ),
          child: Column(
            children: [
                 Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  InkWell(onTap: (){
                    Navigator.of(context).pop();
                  },
                    child: SvgPicture.asset(
                      "assets/images/backarrowicon.svg",
                      height: 25,
                      width: 25,
                    ),
                  ),
                ]),
                 SizedBox(height: 2.h,),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "LOAD REGISTRATION",
                      style:
                      TextStyle(color: AppColors.dashboardtextcolor, fontWeight: FontWeight.bold,
                          fontSize: 22.sp, decoration: TextDecoration.none),
                    ),
                  ],
                ),
              SizedBox(height: 3.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Load Details",
                    style:
                    TextStyle(color: AppColors.dashboardtextcolor, fontWeight: FontWeight.bold,
                        fontSize: 16.sp, decoration: TextDecoration.none),
                  ),
                ],
              ),

              SizedBox(height: 1.h,),
              TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 18.sp),
                  decoration: InputDecoration(
                    //  border: InputBorder.none,

                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                      borderSide: const BorderSide(
                      color: Colors.black, width: 1
                    )
                  ),
                  hintText: "Enter Load Confirmation",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

                ),
              SizedBox(height: 1.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                        borderSide: const BorderSide(
                            color: Colors.black, width: 1
                        )
                    ),
                    hintText: "Enter rate",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

              ),

              SizedBox(height: 1.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                        borderSide: const BorderSide(
                            color: Colors.black, width: 1
                        )
                    ),
                    hintText: "Enter weight",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

              ),

              SizedBox(height: 1.h,),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                        borderSide: const BorderSide(
                            color: Colors.black, width: 1
                        )
                    ),
                    hintText: "Enter load description",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

              ),
               SizedBox(height: 4.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Broker Details",
                    style:
                    TextStyle(color: AppColors.dashboardtextcolor, fontWeight: FontWeight.bold,
                        fontSize: 16.sp, decoration: TextDecoration.none),
                  ),
                ],
              ),

              SizedBox(height: 1.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                        borderSide: const BorderSide(
                            color: Colors.black, width: 1
                        )
                    ),
                    hintText: "Enter Broker name",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

              ),

              SizedBox(height: 1.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                        borderSide: const BorderSide(
                            color: Colors.black, width: 1
                        )
                    ),
                    hintText: "Enter Broker email",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

              ),

              SizedBox(height: 1.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                        borderSide: const BorderSide(
                            color: Colors.black, width: 1
                        )
                    ),
                    hintText: "Enter Broker address",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

              ),

              SizedBox(height: 1.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                        borderSide: const BorderSide(
                            color: Colors.black, width: 1
                        )
                    ),
                    hintText: "Enter Broker phone",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

              ),

              SizedBox(height: 4.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "PickUp Details",
                    style:
                    TextStyle(color: AppColors.dashboardtextcolor, fontWeight: FontWeight.bold,
                        fontSize: 16.sp, decoration: TextDecoration.none),
                  ),
                ],
              ),

              SizedBox(height: 1.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                        borderSide: const BorderSide(
                            color: Colors.black, width: 1
                        )
                    ),
                    hintText: "State",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

              ),

              SizedBox(height: 1.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                        borderSide: const BorderSide(
                            color: Colors.black, width: 1
                        )
                    ),
                    hintText: "City",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

              ),

              SizedBox(height: 1.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                        borderSide: const BorderSide(
                            color: Colors.black, width: 1
                        )
                    ),
                    hintText: "Zip Code",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

              ),

              SizedBox(height: 1.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                        borderSide: const BorderSide(
                            color: Colors.black, width: 1
                        )
                    ),
                    hintText: "Date ",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

              ),

              SizedBox(height: 4.h,),
              InkWell(onTap: (){
                showHiddenPickupField();
              },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.add, color: AppColors.dashboardtextcolor,),
                    Text(
                      "More PickUp",
                      style:
                      TextStyle(color: AppColors.dashboardtextcolor, fontWeight: FontWeight.bold,
                          fontSize: 16.sp, decoration: TextDecoration.none),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 1.h,),
              Visibility(
                visible: _isVisibleForPickup,
                child: Container(child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "PickUp 2",
                        style:
                        TextStyle(color: AppColors.dashboardtextcolor, fontWeight: FontWeight.bold,
                            fontSize: 16.sp, decoration: TextDecoration.none),
                      ),
                    ],),
                  TextFormField(
                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    decoration: InputDecoration(
                      //  border: InputBorder.none,

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),

                            borderSide: const BorderSide(
                                color: Colors.black, width: 1
                            )
                        ),
                        hintText: "State ",
                        hintStyle: TextStyle(color: Colors.grey)
                    ),

                  ),
                  SizedBox(height: 1.h,),

                  TextFormField(
                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    decoration: InputDecoration(
                      //  border: InputBorder.none,

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),

                            borderSide: const BorderSide(
                                color: Colors.black, width: 1
                            )
                        ),
                        hintText: "City ",
                        hintStyle: TextStyle(color: Colors.grey)
                    ),

                  ),
                  SizedBox(height: 1.h,),

                  TextFormField(
                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    decoration: InputDecoration(
                      //  border: InputBorder.none,

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),

                            borderSide: const BorderSide(
                                color: Colors.black, width: 1
                            )
                        ),
                        hintText: "Zip Code ",
                        hintStyle: TextStyle(color: Colors.grey)
                    ),

                  ),

                  SizedBox(height: 1.h,),
                  TextFormField(
                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    decoration: InputDecoration(
                      //  border: InputBorder.none,

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),

                            borderSide: const BorderSide(
                                color: Colors.black, width: 1
                            )
                        ),
                        hintText: "Date",
                        hintStyle: TextStyle(color: Colors.grey)
                    ),

                  ),

                  SizedBox(height: 4.h,),
                  InkWell(onTap: (){
                    showNextHiddenPickupField();
                  },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.add, color: AppColors.dashboardtextcolor,),
                        Text(
                          "More PickUp",
                          style:
                          TextStyle(color: AppColors.dashboardtextcolor, fontWeight: FontWeight.bold,
                              fontSize: 16.sp, decoration: TextDecoration.none),
                        ),

                      ],
                    ),
                  ),

                  Visibility(
                    visible: _nextIsVisibleForPickup,
                    child: Container(child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          Text(
                            "PickUp 3",
                            style:
                            TextStyle(color: AppColors.dashboardtextcolor, fontWeight: FontWeight.bold,
                                fontSize: 16.sp, decoration: TextDecoration.none),
                          ),
                        ],),
                        TextFormField(
                          style: TextStyle(color: Colors.black, fontSize: 18.sp),
                          decoration: InputDecoration(
                            //  border: InputBorder.none,

                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),

                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 1
                                  )
                              ),
                              hintText: "State ",
                              hintStyle: TextStyle(color: Colors.grey)
                          ),

                        ),
                        SizedBox(height: 1.h,),

                        TextFormField(
                          style: TextStyle(color: Colors.black, fontSize: 18.sp),
                          decoration: InputDecoration(
                            //  border: InputBorder.none,

                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),

                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 1
                                  )
                              ),
                              hintText: "City ",
                              hintStyle: TextStyle(color: Colors.grey)
                          ),

                        ),
                        SizedBox(height: 1.h,),

                        TextFormField(
                          style: TextStyle(color: Colors.black, fontSize: 18.sp),
                          decoration: InputDecoration(
                            //  border: InputBorder.none,

                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),

                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 1
                                  )
                              ),
                              hintText: "Zip Code ",
                              hintStyle: TextStyle(color: Colors.grey)
                          ),

                        ),

                        SizedBox(height: 1.h,),
                        TextFormField(
                          style: TextStyle(color: Colors.black, fontSize: 18.sp),
                          decoration: InputDecoration(
                            //  border: InputBorder.none,

                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),

                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 1
                                  )
                              ),
                              hintText: "Date",
                              hintStyle: TextStyle(color: Colors.grey)
                          ),

                        ),
                      ],
                    ),),
                  )

                ],),),
              ),
              SizedBox(height: 4.h,),

              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Drop Details",
                    style:
                    TextStyle(color: AppColors.dashboardtextcolor, fontWeight: FontWeight.bold,
                        fontSize: 16.sp, decoration: TextDecoration.none),
                  ),
                ],
              ),
              SizedBox(height: 1.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                        borderSide: const BorderSide(
                            color: Colors.black, width: 1
                        )
                    ),
                    hintText: "State",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

              ),

              SizedBox(height: 1.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                        borderSide: const BorderSide(
                            color: Colors.black, width: 1
                        )
                    ),
                    hintText: "City",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

              ),

              SizedBox(height: 1.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                        borderSide: const BorderSide(
                            color: Colors.black, width: 1
                        )
                    ),
                    hintText: "Zip Code",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

              ),

              SizedBox(height: 1.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                        borderSide: const BorderSide(
                            color: Colors.black, width: 1
                        )
                    ),
                    hintText: "Date ",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

              ),



              SizedBox(height: 4.h,),
              InkWell(onTap: (){
                showHiddenDropField();
                setState(() {

                });
              },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.add, color: AppColors.dashboardtextcolor,),
                    Text(
                      "More Drop",
                      style:
                      TextStyle(color: AppColors.dashboardtextcolor, fontWeight: FontWeight.bold,
                          fontSize: 16.sp, decoration: TextDecoration.none),
                    ),

                  ],
                ),
              ),
              Visibility(
                visible: _isVisibleForDrop,
                child: Container(child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Drop 2",
                        style:
                        TextStyle(color: AppColors.dashboardtextcolor, fontWeight: FontWeight.bold,
                            fontSize: 16.sp, decoration: TextDecoration.none),
                      ),
                    ],),
                  TextFormField(
                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    decoration: InputDecoration(
                      //  border: InputBorder.none,

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),

                            borderSide: const BorderSide(
                                color: Colors.black, width: 1
                            )
                        ),
                        hintText: "State ",
                        hintStyle: TextStyle(color: Colors.grey)
                    ),

                  ),
                  SizedBox(height: 1.h,),

                  TextFormField(
                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    decoration: InputDecoration(
                      //  border: InputBorder.none,

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),

                            borderSide: const BorderSide(
                                color: Colors.black, width: 1
                            )
                        ),
                        hintText: "City ",
                        hintStyle: TextStyle(color: Colors.grey)
                    ),

                  ),
                  SizedBox(height: 1.h,),

                  TextFormField(
                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    decoration: InputDecoration(
                      //  border: InputBorder.none,

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),

                            borderSide: const BorderSide(
                                color: Colors.black, width: 1
                            )
                        ),
                        hintText: "Zip Code ",
                        hintStyle: TextStyle(color: Colors.grey)
                    ),

                  ),

                  SizedBox(height: 1.h,),
                  TextFormField(
                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    decoration: InputDecoration(
                      //  border: InputBorder.none,

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),

                            borderSide: const BorderSide(
                                color: Colors.black, width: 1
                            )
                        ),
                        hintText: "Date",
                        hintStyle: TextStyle(color: Colors.grey)
                    ),

                  ),

                  SizedBox(height: 4.h,),
                  InkWell(onTap: (){
                    showNextHiddenDropField();
                  },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.add, color: AppColors.dashboardtextcolor,),
                        Text(
                          "More Drop",
                          style:
                          TextStyle(color: AppColors.dashboardtextcolor, fontWeight: FontWeight.bold,
                              fontSize: 16.sp, decoration: TextDecoration.none),
                        ),

                      ],
                    ),
                  ),

                  Visibility(
                    visible: _nextIsVisibleForDrop,
                    child: Container(child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Drop 3",
                              style:
                              TextStyle(color: AppColors.dashboardtextcolor, fontWeight: FontWeight.bold,
                                  fontSize: 16.sp, decoration: TextDecoration.none),
                            ),
                          ],),
                        TextFormField(
                          style: TextStyle(color: Colors.black, fontSize: 18.sp),
                          decoration: InputDecoration(
                            //  border: InputBorder.none,

                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),

                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 1
                                  )
                              ),
                              hintText: "State ",
                              hintStyle: TextStyle(color: Colors.grey)
                          ),

                        ),
                        SizedBox(height: 1.h,),

                        TextFormField(
                          style: TextStyle(color: Colors.black, fontSize: 18.sp),
                          decoration: InputDecoration(
                            //  border: InputBorder.none,

                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),

                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 1
                                  )
                              ),
                              hintText: "City ",
                              hintStyle: TextStyle(color: Colors.grey)
                          ),

                        ),
                        SizedBox(height: 1.h,),

                        TextFormField(
                          style: TextStyle(color: Colors.black, fontSize: 18.sp),
                          decoration: InputDecoration(
                            //  border: InputBorder.none,

                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),

                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 1
                                  )
                              ),
                              hintText: "Zip Code ",
                              hintStyle: TextStyle(color: Colors.grey)
                          ),

                        ),

                        SizedBox(height: 1.h,),
                        TextFormField(
                          style: TextStyle(color: Colors.black, fontSize: 18.sp),
                          decoration: InputDecoration(
                            //  border: InputBorder.none,

                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),

                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 1
                                  )
                              ),
                              hintText: "Date",
                              hintStyle: TextStyle(color: Colors.grey)
                          ),

                        ),
                      ],
                    ),),
                  )

                ],),),
              ),
              SizedBox(height: 4.h,),


              SizedBox(height: 4.h,),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.indigo[500],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide.none)),
                  onPressed: () {
                    PersistentNavBarNavigator.pushNewScreen(context, screen: const LoadDetailsPreview());
                  },
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 25.w, vertical: 2.h),
                    child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                  )),
            ],

          ),
        ),
      ),
    );
  }

  void showHiddenPickupField() {
    setState(() {
      _isVisibleForPickup = !_isVisibleForPickup;
    });

  }

  void showNextHiddenPickupField() {
    setState(() {
      _nextIsVisibleForPickup = !_nextIsVisibleForPickup;
    });
  }

  void showHiddenDropField() {
    setState(() {
      _isVisibleForDrop = ! _isVisibleForDrop;
    });
  }

  void showNextHiddenDropField() {
    setState(() {
      _nextIsVisibleForDrop = !_nextIsVisibleForDrop;
    });
  }
}
