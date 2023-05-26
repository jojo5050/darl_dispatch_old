import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../AuthManagers/authRepo.dart';
import '../../Models/global_variables.dart';
import '../../Utils/localstorage.dart';
import '../../Utils/routers.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  _AdminHomePageState createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {

  List<Map<String, dynamic>>? listOfLoads;
  List<Map<String, dynamic>>? listOfStaffs;
  List<Map<String, dynamic>>? listOfDrivers;
  List<Map<String, dynamic>>? listOfTrucks;
  List<Map<String, dynamic>>? listOfTrailers;


  @override
  void initState() {
    getUserDetails();
    getAllStaffs();
    getAllDrivers();
    getTrucks();
    getTrailers();
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
                                          color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.bold),
                                    ),
                                  )),
                              SizedBox(
                                height: 5.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child:
                                listOfStaffs == null ? CircularProgressIndicator(color: Colors.green,):
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${listOfStaffs!.length ?? ""}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20.sp),
                                    ),
                                    const Icon(
                                      Icons.group,
                                      color: Colors.indigo,
                                      size: 25,
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
                                child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "0",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20.sp),
                                    ),
                                    Icon(Icons.check_circle, color: Colors.indigo, size: 25.sp,)
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
                                    Icon(Icons.done_all, color: Colors.indigo, size: 25.sp,)
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
                                      "Drivers",
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
                                listOfDrivers == null ? CircularProgressIndicator(color: Colors.green,):
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${listOfDrivers!.length ?? ""}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20.sp),
                                    ),
                                    Icon(Icons.directions_car, color: Colors.indigo, size: 25.sp,)
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
                                      "Truck",
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
                                listOfTrucks == null ? CircularProgressIndicator(color: Colors.green,):
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${listOfTrucks!.length ?? ""}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20.sp),
                                    ),
                                    Icon(Icons.local_shipping, color: Colors.indigo, size: 25.sp,)
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
                                          color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.bold),
                                    ),
                                  )),
                              SizedBox(
                                height: 5.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child:
                                listOfTrailers == null ? CircularProgressIndicator(color: Colors.green,):
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${listOfTrailers!.length ?? ""}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20.sp),
                                    ),
                                    Icon(Icons.train, color: Colors.indigo, size: 25.sp,)
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
                                   Icon(Icons.money, color: Colors.indigo, size: 25.sp,)
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
                        ),

                        InkWell(onTap: (){
                          Routers.pushNamed(context, '/registered_loads_Preview');
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
                                    const Center(child: Icon(Icons.checklist, color: Colors.black, size: 40,)),

                                    Text("Registered Loads", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

                                  ],
                                ),
                              )
                          ),
                        ),

                        InkWell(onTap: (){
                          Routers.pushNamed(context, '/regNewUser');
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
                                    const Center(child: Icon(Icons.person_add_alt_sharp, color: Colors.black, size: 40,)),

                                    Text("Users Registration", style: TextStyle(color: Colors.black, fontSize: 14.sp),)

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

  void getAllStaffs() async {
    final AuthRepo authRepo = AuthRepo();
    try{
      Response? response = await authRepo.getStaffs();

      if(response != null && response.statusCode == 200){
        List staffs = response.data["data"]["docs"];

        List<Map<String,dynamic>> data = [];

        if(staffs.length > 0){
          for(int i = 0; i < staffs.length; i++){
            Map<String,dynamic> staffList = staffs[i];
            data.add(staffList);
          }
        }
        setState(() {
          listOfStaffs = data;
        });
      }else {

      }

    }catch(e, str){
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");

    }

  }

  Future getAllDrivers() async {
    final AuthRepo authRepo = AuthRepo();
    try {
      Response? response = await authRepo.getRegDrivers();

      if (response != null && response.statusCode == 200) {
        List regDrivers = response.data["data"]["docs"];

        List<Map<String, dynamic>> data = [];

        if (regDrivers.length > 0) {
          for (int i = 0; i < regDrivers.length; i++) {
            Map<String, dynamic> regDriverList = regDrivers[i];
            data.add(regDriverList);
          }
        }
        setState(() {
          listOfDrivers = data;
        });
      } else {}
    } catch (e, str) {
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");
    }
  }

  void getTrucks() async {
    final AuthRepo authRepo = AuthRepo();
    try {
      Response? response = await authRepo.getAllTrucks();

      if (response != null && response.statusCode == 200) {
        List trucks = response.data["data"]["docs"];

        List<Map<String, dynamic>> data = [];

        if (trucks.length > 0) {
          for (int i = 0; i < trucks.length; i++) {
            Map<String, dynamic> truckList = trucks[i];
            data.add(truckList);
          }
        }
        setState(() {
          listOfTrucks = data;
        });

        print("printing list of vehicles asssssss $listOfTrucks");
      } else {}
    } catch (e, str) {
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");
    }
  }

  void getTrailers() async {
    final AuthRepo authRepo = AuthRepo();
    try {
      Response? response = await authRepo.getAllTrailers();

      if (response != null && response.statusCode == 200) {
        List trailers = response.data["data"]["docs"];

        List<Map<String, dynamic>> data = [];

        if (trailers.length > 0) {
          for (int i = 0; i < trailers.length; i++) {
            Map<String, dynamic> trailerList = trailers[i];
            data.add(trailerList);
          }
        }
        setState(() {
          listOfTrailers = data;
        });

      } else {}
    } catch (e, str) {
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");
    }
  }
}
