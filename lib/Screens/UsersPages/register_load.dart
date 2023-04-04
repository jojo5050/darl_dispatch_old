import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:darl_dispatch/Constants/colors.dart';
import 'package:darl_dispatch/Screens/UsersPages/load_details_preview.dart';
import 'package:darl_dispatch/Utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:intl/intl.dart';

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
  String? countryValue;
  String? stateValue;
  String? cityValue;
  bool addIcon = true;
  bool addIconTwo = true;
  bool dropIcon = true;
  bool dropIconTwo = true;

  TextEditingController dateInputController = TextEditingController();
  TextEditingController timeInputController = TextEditingController();

  @override
  void initState() {
    dateInputController.text = "";
    timeInputController.text = "";
    addIcon = true;
    addIconTwo = true;
    dropIcon = true;
    dropIconTwo = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
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
                      "LOAD REGISTRATION",
                      style: TextStyle(
                          color: AppColors.dashboardtextcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          decoration: TextDecoration.none),
                    ),
                Container()

              ]
              ),

              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Load Details",
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
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                    //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1)),
                    hintText: "Enter Load Confirmation",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                    //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1)),
                    hintText: "Enter rate",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                    //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1)),
                    hintText: "Enter weight",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                    //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1)),
                    hintText: "Enter load description",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Broker Details",
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
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                    //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1)),
                    hintText: "Enter Broker name",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                    //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1)),
                    hintText: "Enter Broker email",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                    //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1)),
                    hintText: "Enter Broker address",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                    //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1)),
                    hintText: "Enter Broker phone",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 4.h,
              ),
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
              SizedBox(
                height: 1.h,
              ),
              Container(
                height: 47.h,
                width: MediaQuery.of(context).size.width / 0.7,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: SelectState(
                          onCountryChanged: (String value) {
                            setState(() {
                              countryValue = value;
                            });
                          },
                          onStateChanged: (String value) {
                            setState(() {
                              stateValue = value;
                            });
                          },
                          onCityChanged: (String value) {
                            cityValue = value;
                          },
                        ),
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.black, fontSize: 18.sp),
                        decoration: const InputDecoration(
                            //  border: InputBorder.none,

                            hintText: "ZipCode",
                            hintStyle: TextStyle(color: Colors.black)),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      TextFormField(
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1960),
                              lastDate: DateTime(2025));
                          if (pickedDate != null) {
                            print("..........................$pickedDate");
                            String formatDate =
                                DateFormat("yyyy-MM-DD").format(pickedDate);
                            setState(() {
                              dateInputController.text = formatDate;
                            });
                          } else {
                            print("...............Date is empty");
                          }
                        },
                        controller: dateInputController,
                        style: TextStyle(color: Colors.black, fontSize: 18.sp),
                        decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.calendar_today,
                              color: Colors.black,
                            ),
                            hintText: "Date",
                            hintStyle: TextStyle(color: Colors.black)),
                        readOnly: true,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      TextFormField(
                        onTap: () async {
                          TimeOfDay? pickedTime = await showTimePicker(
                              context: context, initialTime: TimeOfDay.now());
                          if (pickedTime != null) {
                            DateTime parsedTime = DateFormat.jm()
                                .parse(pickedTime.format(context).toString());
                            String formatedTime =
                                DateFormat("HH:mm:ss").format(parsedTime);
                            setState(() {
                              timeInputController.text = formatedTime;
                            });
                          } else {
                            print("...............Date is empty");
                          }
                        },
                        controller: timeInputController,
                        style: TextStyle(color: Colors.black, fontSize: 18.sp),
                        decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.access_time,
                              color: Colors.black,
                            ),
                            hintText: "Time",
                            hintStyle: TextStyle(color: Colors.black)),
                        readOnly: true,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () {
                  showHiddenPickupField();
                  setState(() {
                    addIcon = !addIcon;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon( addIcon ?
                      Icons.add : Icons.remove_circle_outline,
                      color: AppColors.dashboardtextcolor,
                    ),
                    Text(
                      "More PickUp",
                      style: TextStyle(
                          color: AppColors.dashboardtextcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Visibility(
                visible: _isVisibleForPickup,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "PickUp 2",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                      Container(
                        height: 47.h,
                        width: MediaQuery.of(context).size.width / 0.7,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: SelectState(
                                  onCountryChanged: (String value) {
                                    setState(() {
                                      countryValue = value;
                                    });
                                  },
                                  onStateChanged: (String value) {
                                    setState(() {
                                      stateValue = value;
                                    });
                                  },
                                  onCityChanged: (String value) {
                                    cityValue = value;
                                  },
                                ),
                              ),
                              TextFormField(
                                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                                decoration: const InputDecoration(
                                  //  border: InputBorder.none,

                                    hintText: "ZipCode",
                                    hintStyle: TextStyle(color: Colors.black)),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              TextFormField(
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1960),
                                      lastDate: DateTime(2025));
                                  if (pickedDate != null) {
                                    print("..........................$pickedDate");
                                    String formatDate =
                                    DateFormat("yyyy-MM-DD").format(pickedDate);
                                    setState(() {
                                      dateInputController.text = formatDate;
                                    });
                                  } else {
                                    print("...............Date is empty");
                                  }
                                },
                                controller: dateInputController,
                                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                                decoration: const InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.calendar_today,
                                      color: Colors.black,
                                    ),
                                    hintText: "Date",
                                    hintStyle: TextStyle(color: Colors.black)),
                                readOnly: true,
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              TextFormField(
                                onTap: () async {
                                  TimeOfDay? pickedTime = await showTimePicker(
                                      context: context, initialTime: TimeOfDay.now());
                                  if (pickedTime != null) {
                                    DateTime parsedTime = DateFormat.jm()
                                        .parse(pickedTime.format(context).toString());
                                    String formatedTime =
                                    DateFormat("HH:mm:ss").format(parsedTime);
                                    setState(() {
                                      timeInputController.text = formatedTime;
                                    });
                                  } else {
                                    print("...............Date is empty");
                                  }
                                },
                                controller: timeInputController,
                                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                                decoration: const InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.access_time,
                                      color: Colors.black,
                                    ),
                                    hintText: "Time",
                                    hintStyle: TextStyle(color: Colors.black)),
                                readOnly: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                       SizedBox(height: 2.h,),
                      InkWell(
                        onTap: () {
                          showNextHiddenPickupField();
                          setState(() {
                            addIconTwo = !addIconTwo;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon( addIconTwo ? Icons.add :
                                Icons.remove_circle_outline,
                              color: AppColors.dashboardtextcolor,
                            ),
                            Text(
                              "More PickUp",
                              style: TextStyle(
                                  color: AppColors.dashboardtextcolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: _nextIsVisibleForPickup,
                        child: Container(
                          child: Column(
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                Text(
                                  "PickUp 3",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                      decoration: TextDecoration.none),
                                ),
                              ],),
                              Container(
                                height: 47.h,
                                width: MediaQuery.of(context).size.width / 0.7,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.symmetric(vertical: 8),
                                        child: SelectState(
                                          onCountryChanged: (String value) {
                                            setState(() {
                                              countryValue = value;
                                            });
                                          },
                                          onStateChanged: (String value) {
                                            setState(() {
                                              stateValue = value;
                                            });
                                          },
                                          onCityChanged: (String value) {
                                            cityValue = value;
                                          },
                                        ),
                                      ),
                                      TextFormField(
                                        style: TextStyle(color: Colors.black, fontSize: 18.sp),
                                        decoration: const InputDecoration(
                                          //  border: InputBorder.none,

                                            hintText: "ZipCode",
                                            hintStyle: TextStyle(color: Colors.black)),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      TextFormField(
                                        onTap: () async {
                                          DateTime? pickedDate = await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(1960),
                                              lastDate: DateTime(2025));
                                          if (pickedDate != null) {
                                            print("..........................$pickedDate");
                                            String formatDate =
                                            DateFormat("yyyy-MM-DD").format(pickedDate);
                                            setState(() {
                                              dateInputController.text = formatDate;
                                            });
                                          } else {
                                            print("...............Date is empty");
                                          }
                                        },
                                        controller: dateInputController,
                                        style: TextStyle(color: Colors.black, fontSize: 18.sp),
                                        decoration: const InputDecoration(
                                            suffixIcon: Icon(
                                              Icons.calendar_today,
                                              color: Colors.black,
                                            ),
                                            hintText: "Date",
                                            hintStyle: TextStyle(color: Colors.black)),
                                        readOnly: true,
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      TextFormField(
                                        onTap: () async {
                                          TimeOfDay? pickedTime = await showTimePicker(
                                              context: context, initialTime: TimeOfDay.now());
                                          if (pickedTime != null) {
                                            DateTime parsedTime = DateFormat.jm()
                                                .parse(pickedTime.format(context).toString());
                                            String formatedTime =
                                            DateFormat("HH:mm:ss").format(parsedTime);
                                            setState(() {
                                              timeInputController.text = formatedTime;
                                            });
                                          } else {
                                            print("...............Date is empty");
                                          }
                                        },
                                        controller: timeInputController,
                                        style: TextStyle(color: Colors.black, fontSize: 18.sp),
                                        decoration: const InputDecoration(
                                            suffixIcon: Icon(
                                              Icons.access_time,
                                              color: Colors.black,
                                            ),
                                            hintText: "Time",
                                            hintStyle: TextStyle(color: Colors.black)),
                                        readOnly: true,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),

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
              SizedBox(
                height: 1.h,
              ),
              Container(
                height: 47.h,
                width: MediaQuery.of(context).size.width / 0.7,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: SelectState(
                          onCountryChanged: (String value) {
                            setState(() {
                              countryValue = value;
                            });
                          },
                          onStateChanged: (String value) {
                            setState(() {
                              stateValue = value;
                            });
                          },
                          onCityChanged: (String value) {
                            cityValue = value;
                          },
                        ),
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.black, fontSize: 18.sp),
                        decoration: const InputDecoration(
                          //  border: InputBorder.none,

                            hintText: "ZipCode",
                            hintStyle: TextStyle(color: Colors.black)),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      TextFormField(
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1960),
                              lastDate: DateTime(2025));
                          if (pickedDate != null) {
                            print("..........................$pickedDate");
                            String formatDate =
                            DateFormat("yyyy-MM-DD").format(pickedDate);
                            setState(() {
                              dateInputController.text = formatDate;
                            });
                          } else {
                            print("...............Date is empty");
                          }
                        },
                        controller: dateInputController,
                        style: TextStyle(color: Colors.black, fontSize: 18.sp),
                        decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.calendar_today,
                              color: Colors.black,
                            ),
                            hintText: "Date",
                            hintStyle: TextStyle(color: Colors.black)),
                        readOnly: true,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      TextFormField(
                        onTap: () async {
                          TimeOfDay? pickedTime = await showTimePicker(
                              context: context, initialTime: TimeOfDay.now());
                          if (pickedTime != null) {
                            DateTime parsedTime = DateFormat.jm()
                                .parse(pickedTime.format(context).toString());
                            String formatedTime =
                            DateFormat("HH:mm:ss").format(parsedTime);
                            setState(() {
                              timeInputController.text = formatedTime;
                            });
                          } else {
                            print("...............Date is empty");
                          }
                        },
                        controller: timeInputController,
                        style: TextStyle(color: Colors.black, fontSize: 18.sp),
                        decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.access_time,
                              color: Colors.black,
                            ),
                            hintText: "Time",
                            hintStyle: TextStyle(color: Colors.black)),
                        readOnly: true,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              InkWell(
                onTap: () {
                  showHiddenDropField();
                  setState(() {
                    dropIcon = !dropIcon;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(dropIcon ?
                      Icons.add : Icons.remove_circle_outline,
                      color: AppColors.dashboardtextcolor,
                    ),
                    Text(
                      "More Drop",
                      style: TextStyle(
                          color: AppColors.dashboardtextcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: _isVisibleForDrop,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Drop 2",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                      Container(
                        height: 47.h,
                        width: MediaQuery.of(context).size.width / 0.7,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: SelectState(
                                  onCountryChanged: (String value) {
                                    setState(() {
                                      countryValue = value;
                                    });
                                  },
                                  onStateChanged: (String value) {
                                    setState(() {
                                      stateValue = value;
                                    });
                                  },
                                  onCityChanged: (String value) {
                                    cityValue = value;
                                  },
                                ),
                              ),
                              TextFormField(
                                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                                decoration: const InputDecoration(
                                  //  border: InputBorder.none,

                                    hintText: "ZipCode",
                                    hintStyle: TextStyle(color: Colors.black)),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              TextFormField(
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1960),
                                      lastDate: DateTime(2025));
                                  if (pickedDate != null) {
                                    print("..........................$pickedDate");
                                    String formatDate =
                                    DateFormat("yyyy-MM-DD").format(pickedDate);
                                    setState(() {
                                      dateInputController.text = formatDate;
                                    });
                                  } else {
                                    print("...............Date is empty");
                                  }
                                },
                                controller: dateInputController,
                                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                                decoration: const InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.calendar_today,
                                      color: Colors.black,
                                    ),
                                    hintText: "Date",
                                    hintStyle: TextStyle(color: Colors.black)),
                                readOnly: true,
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              TextFormField(
                                onTap: () async {
                                  TimeOfDay? pickedTime = await showTimePicker(
                                      context: context, initialTime: TimeOfDay.now());
                                  if (pickedTime != null) {
                                    DateTime parsedTime = DateFormat.jm()
                                        .parse(pickedTime.format(context).toString());
                                    String formatedTime =
                                    DateFormat("HH:mm:ss").format(parsedTime);
                                    setState(() {
                                      timeInputController.text = formatedTime;
                                    });
                                  } else {
                                    print("...............Date is empty");
                                  }
                                },
                                controller: timeInputController,
                                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                                decoration: const InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.access_time,
                                      color: Colors.black,
                                    ),
                                    hintText: "Time",
                                    hintStyle: TextStyle(color: Colors.black)),
                                readOnly: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      InkWell(
                        onTap: () {
                          showNextHiddenDropField();
                          setState(() {
                            dropIconTwo = !dropIconTwo;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon( dropIconTwo ?
                              Icons.add : Icons.remove_circle_outline,
                              color: AppColors.dashboardtextcolor,
                            ),
                            Text(
                              "More Drop",
                              style: TextStyle(
                                  color: AppColors.dashboardtextcolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: _nextIsVisibleForDrop,
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Drop 3",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                        decoration: TextDecoration.none),
                                  ),
                                ],
                              ),
                          Container(
                            height: 47.h,
                            width: MediaQuery.of(context).size.width / 0.7,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    child: SelectState(
                                      onCountryChanged: (String value) {
                                        setState(() {
                                          countryValue = value;
                                        });
                                      },
                                      onStateChanged: (String value) {
                                        setState(() {
                                          stateValue = value;
                                        });
                                      },
                                      onCityChanged: (String value) {
                                        cityValue = value;
                                      },
                                    ),
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                                    decoration: const InputDecoration(
                                      //  border: InputBorder.none,

                                        hintText: "ZipCode",
                                        hintStyle: TextStyle(color: Colors.black)),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  TextFormField(
                                    onTap: () async {
                                      DateTime? pickedDate = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1960),
                                          lastDate: DateTime(2025));
                                      if (pickedDate != null) {
                                        print("..........................$pickedDate");
                                        String formatDate =
                                        DateFormat("yyyy-MM-DD").format(pickedDate);
                                        setState(() {
                                          dateInputController.text = formatDate;
                                        });
                                      } else {
                                        print("...............Date is empty");
                                      }
                                    },
                                    controller: dateInputController,
                                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                                    decoration: const InputDecoration(
                                        suffixIcon: Icon(
                                          Icons.calendar_today,
                                          color: Colors.black,
                                        ),
                                        hintText: "Date",
                                        hintStyle: TextStyle(color: Colors.black)),
                                    readOnly: true,
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  TextFormField(
                                    onTap: () async {
                                      TimeOfDay? pickedTime = await showTimePicker(
                                          context: context, initialTime: TimeOfDay.now());
                                      if (pickedTime != null) {
                                        DateTime parsedTime = DateFormat.jm()
                                            .parse(pickedTime.format(context).toString());
                                        String formatedTime =
                                        DateFormat("HH:mm:ss").format(parsedTime);
                                        setState(() {
                                          timeInputController.text = formatedTime;
                                        });
                                      } else {
                                        print("...............Date is empty");
                                      }
                                    },
                                    controller: timeInputController,
                                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                                    decoration: const InputDecoration(
                                        suffixIcon: Icon(
                                          Icons.access_time,
                                          color: Colors.black,
                                        ),
                                        hintText: "Time",
                                        hintStyle: TextStyle(color: Colors.black)),
                                    readOnly: true,
                                  ),
                                ],
                              ),
                            ),
                          ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              SizedBox(
                height: 4.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.indigo[500],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide.none)),
                  onPressed: () {
                    PersistentNavBarNavigator.pushNewScreen(context,
                        screen: const LoadDetailsPreview());
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.w, vertical: 2.h),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
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
      _isVisibleForDrop = !_isVisibleForDrop;
    });
  }

  void showNextHiddenDropField() {
    setState(() {
      _nextIsVisibleForDrop = !_nextIsVisibleForDrop;
    });
  }
}
