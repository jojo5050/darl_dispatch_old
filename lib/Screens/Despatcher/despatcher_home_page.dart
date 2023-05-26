
import 'package:darl_dispatch/Utils/routers.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../AuthManagers/authRepo.dart';
import '../../Models/global_variables.dart';
import '../../Utils/localstorage.dart';

class DespatcherHomePage extends StatefulWidget {
  const DespatcherHomePage({Key? key}) : super(key: key);

  @override
  _DespatcherHomePageState createState() => _DespatcherHomePageState();
}

class _DespatcherHomePageState extends State<DespatcherHomePage> {
  List<Map<String, dynamic>>? listOfLoads;


  @override
  void initState() {
    getUserDetails();
    super.initState();
    getRegLoads();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
         Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/generalDashBoardBg.png"),
                  fit: BoxFit.cover)),),
           SingleChildScrollView(
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
                  height: 20.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
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
                                child:
                                listOfLoads == null ? CircularProgressIndicator(color: Colors.green,):
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${listOfLoads!.length ?? ""}",
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
                                      "0",
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
                                      "0",
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
                                      "NG 0",
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
                      InkWell(onTap: () {
                        Routers.pushNamed(context, '/adminManageLoad');

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
                        Routers.pushNamed(context, '/vehicles');

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

                                  Text("Vehicles", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

                                ],
                              ),
                            )
                        ),
                      ),
                      InkWell(onTap: (){
                        Routers.pushNamed(context, '/allDrivers');

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
                        Routers.pushNamed(context, '/loadsAssignedPreview');

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
                        Routers.pushNamed(context, '/deliveredLoadsPreview');

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
                        Routers.pushNamed(context, '/previewRegLoads');
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
        ]
      )
    );
  }

  void getUserDetails() async {

    dynamic userId = await LocalStorage().fetch("idKey");
    print("userid as $userId");

    final AuthRepo authRepo = AuthRepo();
    try{
      Response? response = await authRepo.getSingleUserInfo({
        "id": userId.toString()
      });

      if(response != null && response.statusCode == 200){

        var  userdata = response.data;
        print("user data asssssssssss $userdata");

        setState(() {
          userName = userdata["name"];
        });
        setState(() {
          email = userdata["email"];
        });
        setState(() {
          userRole = userdata["role"];
        });
        setState(() {
          telNum = userdata["tel"];
        });
        setState(() {
          accNum = userdata["accountNumber"];
        });
        setState(() {
          bankName = userdata["bankName"];
        });
        setState(() {
          address = userdata["address"];
        });

      }else{
        print("could not retrieve it");

      }

    }catch(e){

    }

  }

  void getRegLoads() async {
    final AuthRepo authRepo = AuthRepo();
    try{
      Response? response = await authRepo.fetchAllRegLoads();

      if(response != null && response.statusCode == 200){
        List regLoads = response.data["data"]["docs"];

        print("print loadssssssss asssss${regLoads}");
        List<Map<String,dynamic>> data = [];

        if(regLoads.length > 0){
          for(int i = 0; i < regLoads.length; i++){
            Map<String,dynamic> regLoadList = regLoads[i];
            data.add(regLoadList);
          }
        }
        setState(() {
          listOfLoads = data;
        });

        print("printing list of loads asssssss $listOfLoads");

      }else {

      }

    }catch(e, str){
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");

    }

  }
}
