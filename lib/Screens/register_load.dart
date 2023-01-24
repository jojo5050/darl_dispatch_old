import 'package:darl_dispatch/Constants/colors.dart';
import 'package:darl_dispatch/Utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterLoad extends StatefulWidget {
  const RegisterLoad({Key? key}) : super(key: key);

  @override
  _RegisterLoadState createState() => _RegisterLoadState();
}

class _RegisterLoadState extends State<RegisterLoad> {
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
                    "Shipper Details",
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
                    hintText: "Enter shipper name",
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
                    hintText: "Enter shipper email",
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
                    hintText: "Enter shipper address",
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
                    hintText: "Enter shipper phone",
                    hintStyle: TextStyle(color: Colors.grey)
                ),

              ),

              SizedBox(height: 4.h,),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.indigo[500],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide.none)),
                  onPressed: () {
                    Routers.pushNamed(context, '/load_details');
                  },
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 25.w, vertical: 2.h),
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                  )),
            ],

          ),
        ),
      ),
    );
  }
}
