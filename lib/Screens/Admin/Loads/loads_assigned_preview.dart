
import 'package:darl_dispatch/Utils/routers.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../AuthManagers/authRepo.dart';
import '../../../ConstantHelper/colors.dart';


class LoadsAssignedPreview extends StatefulWidget {
  const LoadsAssignedPreview({Key? key}) : super(key: key);

  @override
  _LoadsAssignedPreviewState createState() => _LoadsAssignedPreviewState();
}

class _LoadsAssignedPreviewState extends State<LoadsAssignedPreview> {
  List<Map<String, dynamic>>? listOfAssignedLoads;
  List<Map<String, dynamic>>? assignedPickupList;
  List<Map<String, dynamic>>? assignedDropList;

  TextEditingController commentController = TextEditingController();

  var errorMssg;

  var errmsg;


  @override
  void initState() {
    getAllAsignedLoads();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
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
                "Assigned Loads",
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
                    gradient: const LinearGradient(
                        colors: [Colors.indigo, Colors.lightBlueAccent],
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
                    itemBuilder: (context) =>
                    [

                      PopupMenuItem(
                        value: 1,
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                              Routers.pushNamed(
                                  context, '/registered_loads_Preview');
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
                                  "N.A Loads",
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

            Expanded(
              child: Container(
                  child: listOfAssignedLoads == null ? Center(
                      child: CircularProgressIndicator(color: Colors.green,)) :
                  listOfAssignedLoads!.isEmpty ?
                  Center(
                    child: Column(
                      children: [
                        Icon(Icons.question_mark, color: Colors.grey,
                          size: 40.sp,),
                        const Text(
                          "No Registered Loads Yet",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ) : ListView.builder(
                      itemCount: listOfAssignedLoads!.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(onTap: () {
                          //   loadDetailsModal(index);
                        },
                          child: Container(
                            height: 48.h,
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 3.w,),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      SizedBox(height: 1.h,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text("RC:", style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 19.sp),),
                                              SizedBox(width: 2.w,),
                                              Text(
                                                "${listOfAssignedLoads![index]["rateConfirmationID"]}",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .dashboardtextcolor,
                                                    fontSize: 19.sp,
                                                    fontWeight: FontWeight
                                                        .bold),
                                              ),
                                            ],
                                          ),
                                          PopupMenuButton(
                                              color: Colors.black,
                                              elevation: 20,
                                              shape: OutlineInputBorder(
                                                  borderRadius: BorderRadius
                                                      .circular(15)),
                                              icon: const Center(
                                                child: Icon(
                                                  Icons.more_vert,
                                                  color: Colors.black,
                                                  size: 30,
                                                ),
                                              ),
                                              itemBuilder: (context) =>
                                              [
                                                PopupMenuItem(
                                                  value: 1,
                                                  child: Container(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                        //   loadDetailsModal(index);
                                                      },
                                                      child: Row(
                                                        children: [
                                                          const Icon(
                                                            Icons
                                                                .restart_alt_sharp,
                                                            color: Colors.green,
                                                            size: 30,
                                                          ),
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          Text(
                                                            "Re-Assign",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15.sp,
                                                                fontWeight: FontWeight
                                                                    .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                PopupMenuItem(
                                                  value: 1,
                                                  child: Container(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                         showComentModal(index);
                                                         pickLoad(index);
                                                      },
                                                      child: Row(
                                                        children: [
                                                          const Icon(
                                                            Icons
                                                                .restart_alt_sharp,
                                                            color: Colors.green,
                                                            size: 30,
                                                          ),
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          Text(
                                                            "Re-Assign",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15.sp,
                                                                fontWeight: FontWeight
                                                                    .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),

                                              ]),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Row(mainAxisAlignment: MainAxisAlignment
                                          .start,
                                        children: [
                                          Text("Amount: \$", style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold)),
                                          SizedBox(width: 2.w,),
                                          Text(
                                              "${listOfAssignedLoads![index]["rate"] ??
                                                  ""}", style: TextStyle(
                                              color: AppColors
                                                  .dashboardtextcolor,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold)),
                                        ],

                                      ),
                                      SizedBox(height: 2.h,),
                                      Row(mainAxisAlignment: MainAxisAlignment
                                          .start,
                                        children: [
                                          Text("Broker Name:", style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold)),
                                          SizedBox(width: 2.w,),
                                          Text(
                                              "${listOfAssignedLoads![index]["brokerName"] ??
                                                  ""}", style: TextStyle(
                                              color: AppColors
                                                  .dashboardtextcolor,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold)),
                                        ],

                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Row(mainAxisAlignment: MainAxisAlignment
                                          .start,
                                        children: [
                                          Text("Broker Tel:", style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold)),
                                          SizedBox(width: 2.w,),
                                          Text(
                                              "${listOfAssignedLoads![index]["brokerNumber"] ??
                                                  ""}", style: TextStyle(
                                              color: AppColors
                                                  .dashboardtextcolor,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold)),
                                        ],

                                      ),
                                      SizedBox(height: 2.h,),

                                      Row(mainAxisAlignment: MainAxisAlignment
                                          .start,
                                        children: [
                                          Text("Shipper Email:",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(width: 2.w,),
                                          Text(
                                              "${listOfAssignedLoads![index]["shipperEmail"] ??
                                                  ""}", style: TextStyle(
                                              color: AppColors
                                                  .dashboardtextcolor,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold)),
                                        ],

                                      ),

                                      SizedBox(height: 2.h,),

                                      Row(mainAxisAlignment: MainAxisAlignment
                                          .start,
                                        children: [
                                          Text("Shipper Address:",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(width: 2.w,),
                                          Text(
                                              "${listOfAssignedLoads![index]["shipperAddress"] ??
                                                  ""}", style: TextStyle(
                                              color: AppColors
                                                  .dashboardtextcolor,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold)),
                                        ],

                                      ),

                                      SizedBox(height: 4.h,),
                                      Row(mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                        children: [
                                          InkWell(onTap: () {
                                            getPickups(index);
                                            pickupsModal(index);
                                          },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius: BorderRadius
                                                      .circular(10)
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 3.w,
                                                    vertical: 1.h),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  children: [
                                                    Text("Pickups:",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 16.sp,
                                                            fontWeight: FontWeight
                                                                .bold)),
                                                    SizedBox(width: 2.w,),
                                                    Text(
                                                        "${listOfAssignedLoads![index]["totalPickups"] ??
                                                            "0"}",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 16.sp,
                                                            fontWeight: FontWeight
                                                                .bold)),
                                                  ],

                                                ),
                                              ),
                                            ),
                                          ),

                                          InkWell(onTap: () {
                                            getDrops(index);
                                            dropModal(index);
                                          },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius: BorderRadius
                                                      .circular(10)
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 3.w,
                                                    vertical: 1.h),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  children: [
                                                    Text("Drops:",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 16.sp,
                                                            fontWeight: FontWeight
                                                                .bold)),
                                                    SizedBox(width: 2.w,),
                                                    Text(
                                                        "${listOfAssignedLoads![index]["totalDrops"] ??
                                                            "0"}",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 16.sp,
                                                            fontWeight: FontWeight
                                                                .bold)),
                                                  ],

                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 2.h,),
                                      Card(
                                        color: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              15),
                                        ),
                                        elevation: 15,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 3.w, vertical: 2.h),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .start,
                                                children: [
                                                  Text("Assigned To:",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16.sp,
                                                        fontWeight: FontWeight
                                                            .bold),),
                                                  SizedBox(width: 2.w,),
                                                  Container(
                                                    constraints: BoxConstraints(
                                                        maxWidth: 180),
                                                    child: Text(
                                                      "${listOfAssignedLoads![index]["name"]}",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 17.sp,
                                                          fontWeight: FontWeight
                                                              .bold),),
                                                  )
                                                ],),

                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 1.h,),


                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ),
                        );
                      })


              ),
            )

          ],

        ),
      ),
    );
  }

  void getAllAsignedLoads() async {
    final AuthRepo authRepo = AuthRepo();
    try {
      Response? response = await authRepo.getAllAssignedLoads();

      if (response != null && response.statusCode == 200 &&
          response.data["status"] == "success") {
        List assignedLoads = response.data["data"]["docs"];

        List<Map<String, dynamic>> data = [];

        if (assignedLoads.length > 0) {
          for (int i = 0; i < assignedLoads.length; i++) {
            Map<String, dynamic> assignedLoadsList = assignedLoads[i];
            data.add(assignedLoadsList);
          }
        }
        setState(() {
          listOfAssignedLoads = data;
        });

      } else {
       // stopLoader();
        setState(() {
          errmsg = response!.data["message"];
        });

      }
    } catch (e, str) {
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");
    }
  }

  void getPickups(index) async {
    final AuthRepo authRepo = AuthRepo();
    var loadID = listOfAssignedLoads![index]["load_id"];
    try {
      Response? response = await authRepo.getPickups({
        "loadID": loadID
      });
      print("print load id assssssss ${loadID}");

      if (response != null && response.statusCode == 200) {
        List assignedPickups = response.data["data"]["docs"];

        print("print pickup asssss${assignedPickups}");
        List<Map<String, dynamic>> data = [];

        if (assignedPickups.length > 0) {
          for (int i = 0; i < assignedPickups.length; i++) {
            Map<String, dynamic> assignedPickupList = assignedPickups[i];
            data.add(assignedPickupList);
          }
        }
        setState(() {
          assignedPickupList = data;
        });

        print("printing list of pickups asssssss $assignedPickupList");
      } else {

      }
    } catch (e, str) {
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");
    }
  }

  void getDrops(index) async {
    final AuthRepo authRepo = AuthRepo();
     var loadID = listOfAssignedLoads![index]["load_id"];
    try {
      Response? response = await authRepo.getPickups({
        "loadID": loadID
      });
      //  print("print load id assssssss ${loadID}");

      if (response != null && response.statusCode == 200) {
        List assignedDrops = response.data["data"]["docs"];

        print("print pickup asssss${assignedDrops}");
        List<Map<String, dynamic>> data = [];

        if (assignedDrops.length > 0) {
          for (int i = 0; i < assignedDrops.length; i++) {
            Map<String, dynamic> assignedDropList = assignedDrops[i];
            data.add(assignedDropList);
          }
        }
        setState(() {
          assignedDropList = data;
        });

        print("printing list of pickups asssssss $assignedDropList");
      } else {

      }
    } catch (e, str) {
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");
    }
  }

  void pickupsModal(index) {
    showModalBottomSheet<dynamic>(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext bc) {
          return Wrap(children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(25.0),
                      topRight: const Radius.circular(25.0))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                child: Column(
                  children: [
                    Divider(
                      color: Colors.grey,
                      height: 5,
                      thickness: 5,
                      indent: 110,
                      endIndent: 110,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      "Pickup Details",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 40.h,
                      child: assignedPickupList == null
                          ? Center(
                          child: CircularProgressIndicator(
                            color: Colors.blue,
                          ))
                          : assignedPickupList!.isEmpty
                          ? Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.question_mark,
                              color: Colors.grey,
                              size: 40.sp,
                            ),
                            const Text(
                              "No Pickups Yet",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        ),
                      )
                          : ListView.builder(
                          itemCount: assignedPickupList!.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                //    saveTruckDetails(index);
                              },
                              child: Container(
                                height: 25.h,
                                child: Card(
                                  color: Colors.green,
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(10)),
                                  child: Container(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 3.w,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          Row(mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Pickup City:",  style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                              SizedBox(width: 4.w,),
                                              Text("${assignedPickupList![index]["city"]}",  style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                            ],

                                          ),
                                          SizedBox(height: 1.5.h,),
                                          Row(mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Pickup date:",  style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                              SizedBox(width: 4.w,),
                                              Text("${assignedPickupList![index]["date"]}",  style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                            ],

                                          ),
                                          SizedBox(height: 1.5.h,),
                                          Row(mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Pickup Time:",  style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                              SizedBox(width: 4.w,),
                                              Text("${assignedPickupList![index]["time"]}",  style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                            ],

                                          ),
                                          SizedBox(height: 1.5.h,),
                                          Row(mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Pickup ZipCode:",  style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                              SizedBox(width: 4.w,),
                                              Text("${assignedPickupList![index]["stateZipCode"]}",  style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                            ],

                                          ),
                                          SizedBox(height: 1.5.h,),
                                          Row(mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Pickup Address",  style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                              SizedBox(width: 4.w,),
                                              Text("${assignedPickupList![index]["address"]}",  style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                            ],

                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ]);
        });
  }

  void dropModal(index) {
    showModalBottomSheet<dynamic>(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext bc) {
          return Wrap(children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(25.0),
                      topRight: const Radius.circular(25.0))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                child: Column(
                  children: [
                    Divider(
                      color: Colors.grey,
                      height: 5,
                      thickness: 5,
                      indent: 110,
                      endIndent: 110,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      "Drop Details",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 40.h,
                      child: assignedDropList == null
                          ? Center(
                          child: CircularProgressIndicator(
                            color: Colors.blue,
                          ))
                          : assignedDropList!.isEmpty
                          ? Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.question_mark,
                              color: Colors.grey,
                              size: 40.sp,
                            ),
                            const Text(
                              "No Drops Yet",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        ),
                      )
                          : ListView.builder(
                          itemCount: assignedDropList!.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                //    saveTruckDetails(index);
                              },
                              child: Container(
                                height: 25.h,
                                child: Card(
                                  color: Colors.grey,
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(10)),
                                  child: Container(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 3.w,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          Row(mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Drop City:",  style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                              SizedBox(width: 4.w,),
                                              Text("${assignedDropList![index]["city"]}",  style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                            ],

                                          ),
                                          SizedBox(height: 1.5.h,),
                                          Row(mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Drop date:",  style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                              SizedBox(width: 4.w,),
                                              Text("${assignedDropList![index]["date"]}",  style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                            ],

                                          ),
                                          SizedBox(height: 1.5.h,),
                                          Row(mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Drop Time:",  style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                              SizedBox(width: 4.w,),
                                              Text("${assignedDropList![index]["time"]}",  style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                            ],

                                          ),
                                          SizedBox(height: 1.5.h,),
                                          Row(mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Drop ZipCode:",  style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                              SizedBox(width: 4.w,),
                                              Text("${assignedDropList![index]["stateZipCode"]}",  style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                            ],

                                          ),
                                          SizedBox(height: 1.h,),
                                          Row(mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Drop Address",  style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                              SizedBox(width: 4.w,),
                                              Text("${assignedDropList![index]["address"]}",  style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                                            ],

                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ]);
        });
  }

  void pickLoad(int index) async {
    final AuthRepo authRepo = AuthRepo();

    try {
      Response? response = await authRepo.pickLoad({
        "pickID": "220",
        "status": "2",
        "load_id": "1237",
        "pickedupTime": "10:12pm",
        "pickedup_Date": "12/04/2023",
        "pickedStatus": "2",
        "totalLoadPicked": "",
        "comment": "u ehh",
        "truck": "009",
        "trailer": "TF5308",
        "tractor": ""
      });

      if (response != null && response.statusCode == 200
          && response.data["Status"] == 200) {
        stopLoader();
        showPopUp();
      } else {
        setState(() {
          errorMssg = response?.data["message"];
        });

        desplayErromssge();
      }
    } catch (e, str) {
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");
    }

    setState(() {
     // loading = false;
    });

  }

  Future<void> stopLoader() async {
    Navigator.of(context).pop();
  }

  void showPopUp() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        backgroundColor: Colors.black87,
        actions: <Widget>[
          SizedBox(
            height: 20,
          ),
          Center(
              child: Icon(
                Icons.check_circle_outline,
                color: Colors.green,
                size: 40.sp,
              )),
          SizedBox(
            height: 15,
          ),
          const Center(
            child: Text(
              " Success!",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          const Center(
            child: Text(
              " Load Was Picked ",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          const Center(
            child: Text(
              "Successfully",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                //  Navigator.pushNamed(context, '/loadsAssignedPreview');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "OK",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  void desplayErromssge() async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        duration: Duration(seconds: 4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        content: Text("$errorMssg",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );

  }

  void showComentModal(index) {
    showModalBottomSheet<dynamic>(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        isScrollControlled: true,
        context: context, builder: (BuildContext bc)

    {

      return Wrap(children:<Widget> [
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0))),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
            child: Column(children:  [
              const Divider(
                color: Colors.grey,
                height: 5,
                thickness: 5,
                indent: 150,
                endIndent: 150,
              ),

              SizedBox(height: 3.h,),
              Text("Add a Comment", style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold, fontSize: 18.sp),),
              SizedBox(height: 2.h,),

              TextFormField(
                textAlignVertical: TextAlignVertical.center,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                controller: commentController,
              //  validator: validateFullName,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 20,
                    ),
                    fillColor: AppColors.textFieldColor,
                    filled: true,
                    hintText: "Comment Here",
                    hintStyle: const TextStyle(color: Colors.black)),
              ),

              SizedBox(height: 2.h,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.indigo[500],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide.none)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  //  Routers.pushNamed(context, '/addDropPickup');
                  },
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 15.w, vertical: 2.h),
                    child: Text(
                      "Pick Load",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ],),
          ),
        ),


      ]);
    });

  }

  void desplayErr() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        duration: Duration(seconds: 4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        content: Text("$errmsg",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );


  }
}