import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:darl_dispatch/AuthManagers/authRepo.dart';
import 'package:darl_dispatch/Models/global_variables.dart';
import 'package:darl_dispatch/Models/load_reg_model.dart';
import 'package:darl_dispatch/Screens/UsersPages/load_details_preview.dart';
import 'package:darl_dispatch/Utils/form_validators.dart';
import 'package:darl_dispatch/Utils/progress_bar.dart';
import 'package:darl_dispatch/Utils/routers.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:intl/intl.dart';

import '../../../ConstantHelper/colors.dart';
import '../../../Models/pick_drop_model.dart';
import '../../../Utils/localstorage.dart';

class AddDropPickup extends StatefulWidget {
  const AddDropPickup({Key? key}) : super(key: key);

  @override
  _AddDropPickupState createState() => _AddDropPickupState();
}

class _AddDropPickupState extends State<AddDropPickup> with FormValidators {
  bool _isVisibleForPickup = false;
  bool _nextIsVisibleForPickup = false;
  bool _isVisibleForDrop = false;
  bool _nextIsVisibleForDrop = false;

  String? pickCountryValue1;
  String? pickStateValue1;
  String? pickCityValue1;

  String? pickCountryValue2;
  String? pickStateValue2;
  String? pickCityValue2;

  String? pickCountryValue3;
  String? pickStateValue3;
  String? pickCityValue3;

  String? dropCountryValue1;
  String? dropStateValue1;
  String? dropCityValue1;

  String? dropCountryValue2;
  String? dropStateValue2;
  String? dropCityValue2;

  String? dropCountryValue3;
  String? dropStateValue3;
  String? dropCityValue3;

  bool addIcon = true;
  bool addIconTwo = true;
  bool dropIcon = true;
  bool dropIconTwo = true;

  bool pickLoading1 = false;
  bool pickLoading2 = false;
  bool pickLoading3 = false;

  bool dropLoading1 = false;
  bool dropLoading2 = false;
  bool dropLoading3 = false;

  bool pickCheck1 = false;
  bool pickCheck2 = false;
  bool pickCheck3 = false;

  bool dropCheck1 = false;
  bool dropCheck2 = false;
  bool dropCheck3 = false;
  final PickAndDropModel pickDropModel = PickAndDropModel();

  var errorMessage;

  void _allowAddPick3() {
    if (pickDropModel.pickDropFormKey.currentState!.validate()) {
      setState(() {
        pickLoading3 = true;
      });
      submitPickup3();
    }
  }

  void _allowAddPick2() {
    if (pickDropModel.pickDropFormKey.currentState!.validate()) {
      setState(() {
        pickLoading2 = true;
      });
      submitPickup2();
    }
  }

  void _allowAddPick1() {
    if (pickDropModel.pickDropFormKey.currentState!.validate()) {
      setState(() {
        pickLoading1 = true;
      });
      submitPickup1();
    }
  }

  void _allowAddDrop1() {
    if (pickDropModel.pickDropFormKey.currentState!.validate()) {
      setState(() {
        dropLoading1 = true;
      });
      submitDrop1();
    }
  }

  void _allowAddDrop2() {
    if (pickDropModel.pickDropFormKey.currentState!.validate()) {
      setState(() {
        dropLoading2 = true;
      });
      submitDrop2();
    }
  }

  void _allowAddDrop3() {
    if (pickDropModel.pickDropFormKey.currentState!.validate()) {
      setState(() {
        dropLoading3 = true;
      });
      submitDrop3();
    }
  }


  @override
  void initState() {
    getLoadID();

    pickDropModel.pickupDateInputController1.text = "";
    pickDropModel.pickupDateInputController2.text = "";
    pickDropModel.pickupdDateInputController3.text = "";
    pickDropModel.pickTimeInputController1.text = "";
    pickDropModel.pickTimeInputController2.text = "";
    pickDropModel.pickTimeInputController3.text = "";

    pickDropModel.dropDateInputController1.text = "";
    pickDropModel.dropDateInputController2.text = "";
    pickDropModel.dropDateInputController3.text = "";
    pickDropModel.dropTimeInputController1.text = "";
    pickDropModel.dropTimeInputController2.text = "";
    pickDropModel.dropTimeInputController3.text = "";


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
          child: Form(key: pickDropModel.pickDropFormKey,
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
                    "Add Drop / Pickup",
                    style: TextStyle(
                        color: AppColors.dashboardtextcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 19.sp,
                        decoration: TextDecoration.none),
                  ),
                  Container()

                ]
                ),
                SizedBox(height: 2.h,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("RC:", style: TextStyle(color: Colors.black, fontSize: 17.sp,
                    fontWeight: FontWeight.bold),),
                    SizedBox(width: 2.w,),
                    Text("${rateCon ?? ""}", style: TextStyle(color: AppColors.dashboardtextcolor,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold),),
                  ],
                ),

                SizedBox(
                  height: 3.h,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "PickUp Details",
                      style: TextStyle(
                          color: AppColors.dashboardtextcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                          decoration: TextDecoration.none),
                    ),
                    Text(
                      "PickUp 1",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  height: 58.h,
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
                                pickCountryValue1 = value;
                              });
                            },
                            onStateChanged: (String value) {
                              setState(() {
                                pickStateValue1 = value;
                              });
                            },
                            onCityChanged: (String value) {
                              pickCityValue1 = value;

                            },
                          ),
                        ),
                        TextFormField(
                        //  validator: validateZipCode,
                          controller: pickDropModel.pickZipcoadController1,
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
                        //  validator: validateDate,
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
                                pickDropModel.pickupDateInputController1.text = formatDate;
                              });
                            } else {
                              print("...............Date is empty");
                            }
                          },
                          controller: pickDropModel.pickupDateInputController1,
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
                                pickDropModel.pickTimeInputController1.text = formatedTime;
                              });
                            } else {
                              print("...............Date is empty");
                            }
                          },
                          controller: pickDropModel.pickTimeInputController1,
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
                        SizedBox(height: 1.h,),
                         Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Confirm to add pick Detail",
                                style: TextStyle(color: Colors.black, fontSize: 14.sp),),
                              Checkbox(
                                side: BorderSide(
                                    color: Colors.black, width: 2),
                                checkColor: Colors.black,
                                activeColor: Colors.green,
                                value: pickCheck1,
                                onChanged: (value){
                                  setState(() {
                                    pickCheck1 = value ?? false;
                                  });
                                },
                              ),
                            ],
                          ),

                        pickLoading1 ? ProgressBar():
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                               onSurface: Colors.grey,
                                primary: Colors.indigo[500],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: BorderSide.none)),
                            onPressed:
                              pickCheck1 ? _allowAddPick1 : null,

                            child: Padding(
                              padding:
                              EdgeInsets.symmetric(horizontal: 15.w, vertical: 1.h),
                              child: Text(
                                "Submit",
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
                        color: Colors.black,
                      ),
                      Text(
                        "More PickUp",
                        style: TextStyle(
                            color: Colors.black,
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
                          height: 58.h,
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
                                        pickCountryValue2 = value;
                                      });
                                    },
                                    onStateChanged: (String value) {
                                      setState(() {
                                        pickStateValue2 = value;
                                      });
                                    },
                                    onCityChanged: (String value) {
                                      pickCityValue3 = value;
                                    },
                                  ),
                                ),
                                TextFormField(
                                  controller: pickDropModel.pickZipcoadController2,
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
                                        pickDropModel.pickupDateInputController2.text = formatDate;
                                      });
                                    } else {
                                      print("...............Date is empty");
                                    }
                                  },
                                  controller: pickDropModel.pickupDateInputController2,
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
                                        pickDropModel.pickTimeInputController2.text = formatedTime;
                                      });
                                    } else {
                                      print("...............Date is empty");
                                    }
                                  },
                                  controller: pickDropModel.pickTimeInputController2,
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
                                SizedBox(height: 1.h,),
                                Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Confirm to add pick Detail",
                                      style: TextStyle(color: Colors.black, fontSize: 14.sp),),
                                    Checkbox(
                                      side: BorderSide(
                                          color: Colors.black, width: 2),
                                      checkColor: Colors.black,
                                      activeColor: Colors.green,
                                      value: pickCheck2,
                                      onChanged: (value){
                                        setState(() {
                                          pickCheck2 = value ?? false;
                                        });
                                      },
                                    ),
                                  ],
                                ),

                                pickLoading2 ? ProgressBar():
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        onSurface: Colors.grey,
                                        primary: Colors.indigo[500],
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15),
                                            side: BorderSide.none)),
                                    onPressed:
                                    pickCheck2 ? _allowAddPick2 : null,

                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 1.h),
                                      child: Text(
                                        "Submit",
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
                                color: Colors.black,
                              ),
                              Text(
                                "More PickUp",
                                style: TextStyle(
                                    color: Colors.black,
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
                                  height: 58.h,
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
                                                pickCountryValue3 = value;
                                              });
                                            },
                                            onStateChanged: (String value) {
                                              setState(() {
                                                pickCountryValue3 = value;
                                              });
                                            },
                                            onCityChanged: (String value) {
                                              pickCityValue3 = value;
                                            },
                                          ),
                                        ),
                                        TextFormField(
                                          controller: pickDropModel.pickZipcoadController3,
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
                                                pickDropModel.pickupdDateInputController3.text = formatDate;
                                              });
                                            } else {
                                              print("...............Date is empty");
                                            }
                                          },
                                          controller:pickDropModel.pickupdDateInputController3,
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
                                                pickDropModel.pickTimeInputController3.text = formatedTime;
                                              });
                                            } else {
                                              print("...............Date is empty");
                                            }
                                          },
                                          controller: pickDropModel.pickTimeInputController3,
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

                                        SizedBox(height: 1.h,),
                                        Row(mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text("Confirm to add pick Detail",
                                              style: TextStyle(color: Colors.black, fontSize: 14.sp),),
                                            Checkbox(
                                              side: BorderSide(
                                                  color: Colors.black, width: 2),
                                              checkColor: Colors.black,
                                              activeColor: Colors.green,
                                              value: pickCheck3,
                                              onChanged: (value){
                                                setState(() {
                                                  pickCheck3 = value ?? false;
                                                });
                                              },
                                            ),
                                          ],
                                        ),

                                        pickLoading3 ? ProgressBar():
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                onSurface: Colors.grey,
                                                primary: Colors.indigo[500],
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15),
                                                    side: BorderSide.none)),
                                            onPressed:
                                            pickCheck3 ? _allowAddPick3 : null,

                                            child: Padding(
                                              padding:
                                              EdgeInsets.symmetric(horizontal: 15.w, vertical: 1.h),
                                              child: Text(
                                                "Submit",
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Drop Details",
                      style: TextStyle(
                          color: AppColors.dashboardtextcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                          decoration: TextDecoration.none),
                    ),

                    Text(
                      "Drop 1",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  height: 58.h,
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
                                dropCountryValue1 = value;
                              });
                            },
                            onStateChanged: (String value) {
                              setState(() {
                                dropStateValue1 = value;
                              });
                            },
                            onCityChanged: (String value) {
                              dropCityValue1 = value;
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
                                pickDropModel.dropDateInputController1.text = formatDate;
                              });
                            } else {
                              print("...............Date is empty");
                            }
                          },
                          controller:pickDropModel.dropDateInputController1,
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
                                pickDropModel.dropTimeInputController1.text = formatedTime;
                              });
                            } else {
                              print("...............Date is empty");
                            }
                          },
                          controller: pickDropModel.dropTimeInputController1,
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
                        SizedBox(height: 1.h,),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Confirm to add Drop Detail",
                              style: TextStyle(color: Colors.black, fontSize: 14.sp),),
                            Checkbox(
                              side: BorderSide(
                                  color: Colors.black, width: 2),
                              checkColor: Colors.black,
                              activeColor: Colors.green,
                              value: dropCheck1,
                              onChanged: (value){
                                setState(() {
                                  dropCheck1 = value ?? false;
                                });
                              },
                            ),
                          ],
                        ),

                        dropLoading1 ? ProgressBar():
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                onSurface: Colors.grey,
                                primary: Colors.indigo[500],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: BorderSide.none)),
                            onPressed:
                            dropCheck1 ? _allowAddDrop1 : null,

                            child: Padding(
                              padding:
                              EdgeInsets.symmetric(horizontal: 15.w, vertical: 1.h),
                              child: Text(
                                "Submit",
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
                SizedBox(
                  height: 2.h,
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
                        color: Colors.black,
                      ),
                      Text(
                        "More Drop",
                        style: TextStyle(
                            color: Colors.black,
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
                          height: 58.h,
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
                                        dropCountryValue2 = value;
                                      });
                                    },
                                    onStateChanged: (String value) {
                                      setState(() {
                                        dropStateValue2 = value;
                                      });
                                    },
                                    onCityChanged: (String value) {
                                      dropCityValue2 = value;
                                    },
                                  ),
                                ),
                                TextFormField(
                                  controller: pickDropModel.dropZipcoadController2,
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
                                        pickDropModel.dropDateInputController2.text = formatDate;
                                      });
                                    } else {
                                      print("...............Date is empty");
                                    }
                                  },
                                  controller: pickDropModel.dropDateInputController2,
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
                                        pickDropModel.dropTimeInputController2.text = formatedTime;
                                      });
                                    } else {
                                      print("...............Date is empty");
                                    }
                                  },
                                  controller: pickDropModel.dropTimeInputController2,
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
                                SizedBox(height: 1.h,),
                                Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Confirm to add drop Detail",
                                      style: TextStyle(color: Colors.black, fontSize: 14.sp),),
                                    Checkbox(
                                      side: BorderSide(
                                          color: Colors.black, width: 2),
                                      checkColor: Colors.black,
                                      activeColor: Colors.green,
                                      value: dropCheck2,
                                      onChanged: (value){
                                        setState(() {
                                          dropCheck2 = value ?? false;
                                        });
                                      },
                                    ),
                                  ],
                                ),

                                dropLoading2 ? ProgressBar():
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        onSurface: Colors.grey,
                                        primary: Colors.indigo[500],
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15),
                                            side: BorderSide.none)),
                                    onPressed:
                                    dropCheck2 ? _allowAddDrop2 : null,

                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 1.h),
                                      child: Text(
                                        "Submit",
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
                        SizedBox(
                          height: 2.h,
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
                                color: Colors.black,
                              ),
                              Text(
                                "More Drop",
                                style: TextStyle(
                                    color: Colors.black,
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
                                  height: 58.h,
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
                                                dropCountryValue3 = value;
                                              });
                                            },
                                            onStateChanged: (String value) {
                                              setState(() {
                                                dropStateValue3 = value;
                                              });
                                            },
                                            onCityChanged: (String value) {
                                              dropCityValue3 = value;
                                            },
                                          ),
                                        ),
                                        TextFormField(
                                          controller: pickDropModel.dropZipcoadController3,
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
                                                pickDropModel.dropDateInputController3.text = formatDate;
                                              });
                                            } else {
                                              print("...............Date is empty");
                                            }
                                          },
                                          controller: pickDropModel.dropDateInputController3,
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
                                                pickDropModel.dropTimeInputController3.text = formatedTime;
                                              });
                                            } else {
                                              print("...............Date is empty");
                                            }
                                          },
                                          controller:pickDropModel.dropTimeInputController3,
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
                                        SizedBox(height: 1.h,),
                                        Row(mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text("Confirm to add drop Detail",
                                              style: TextStyle(color: Colors.black, fontSize: 14.sp),),
                                            Checkbox(
                                              side: BorderSide(
                                                  color: Colors.black, width: 2),
                                              checkColor: Colors.black,
                                              activeColor: Colors.green,
                                              value: dropCheck3,
                                              onChanged: (value){
                                                setState(() {
                                                  dropCheck3 = value ?? false;
                                                });
                                              },
                                            ),
                                          ],
                                        ),

                                        dropLoading3 ? ProgressBar():
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                onSurface: Colors.grey,
                                                primary: Colors.indigo[500],
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15),
                                                    side: BorderSide.none)),
                                            onPressed:
                                            dropCheck3 ? _allowAddDrop3 : null,

                                            child: Padding(
                                              padding:
                                              EdgeInsets.symmetric(horizontal: 15.w, vertical: 1.h),
                                              child: Text(
                                                "Submit",
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
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide.none)),
                    onPressed: () {
                      Routers.pushNamed(context, '/registeredPickDrop');
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



  Future desplayLoginsuccessmssg() async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        duration: Duration(seconds: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        content: Text(
          "PickUp Registered Successfully",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }

  void displayErrorSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        duration: Duration(seconds: 3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        content: Text(
          "Internal Server Error, Contact Your Admin",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
  void submitPickup1() async {
    final AuthRepo authRepo = AuthRepo();

    try{
      Response? response = await authRepo.addPickup({
        "date" : pickDropModel.pickupDateInputController1.text,
        "time" : pickDropModel.pickTimeInputController1.text,
        "city" : pickCityValue1.toString(),
        "state" : pickStateValue1.toString(),
        "stateZipCode" : pickDropModel.pickZipcoadController1.text,
        "name" : mLoadDec.toString(),
        "load_id": mLoadID.toString()
      });

      if(response != null && response.statusCode == 200 && response.data["status"] == 200 ){
        desplayLoginsuccessmssg();

      }else if(response!.statusCode == 500){

        displayErrorSnackbar();
      }


    }catch(e, str){
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");
    }
    setState(() {
      pickLoading1 = false;
    });

  }
  void submitPickup2() async {
    final AuthRepo authRepo = AuthRepo();

    try{
      Response? response = await authRepo.addPickup({
        "date" : pickDropModel.pickupDateInputController2.text,
        "time" : pickDropModel.pickTimeInputController2.text,
        "city" : pickCityValue2.toString(),
        "state" : pickStateValue2.toString(),
        "stateZipCode" : pickDropModel.pickZipcoadController2.text,
        "name" : mLoadDec.toString(),
        "load_id": mLoadID.toString()
      });

      if(response != null && response.statusCode == 200 && response.data["status"] == 200){
        desplayLoginsuccessmssg();

      }else if(response!.statusCode == 500){

        displayErrorSnackbar();
      }


    }catch(e, str){
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");
    }
    setState(() {
      pickLoading2 = false;
    });

  }

  void submitPickup3() async {
    final AuthRepo authRepo = AuthRepo();

    try{
      Response? response = await authRepo.addPickup({
        "date" : pickDropModel.pickupdDateInputController3.text,
        "time" : pickDropModel.pickTimeInputController3.text,
        "city" : pickCityValue3.toString(),
        "state" : pickStateValue3.toString(),
        "stateZipCode" : pickDropModel.pickZipcoadController3.text,
        "name" : mLoadDec.toString(),
        "load_id": mLoadID.toString()
      });

      if(response != null && response.statusCode == 200 && response.data["status"] == 200){
        desplayLoginsuccessmssg();

      }else if(response!.statusCode == 500){

        displayErrorSnackbar();
      }


    }catch(e, str){
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");
    }
    setState(() {
      pickLoading3 = false;
    });

  }

  void submitDrop1() async {
    final AuthRepo authRepo = AuthRepo();

    try{
      Response? response = await authRepo.addDrop({
        "date" : pickDropModel.dropDateInputController1.text,
        "time" : pickDropModel.dropTimeInputController1.text,
        "city" : dropCityValue1.toString(),
        "state" : dropStateValue1.toString(),
        "stateZipCode" : pickDropModel.dropZipcoadController1.text,
        "name" : mLoadDec.toString(),
        "load_id": mLoadID.toString()
      });
        print("print load iddddddddddd as $mLoadID");
      if(response != null && response.statusCode == 200){
        desplayDropSuccess();

      }else if(response!.statusCode == 500){

        displayErrorSnackbar();
      }


    }catch(e, str){
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");
    }
    setState(() {
      dropLoading1 = false;
    });

  }

  void submitDrop2() async {
    final AuthRepo authRepo = AuthRepo();

    try{
      Response? response = await authRepo.addDrop({
        "date" : pickDropModel.dropDateInputController2.text,
        "time" : pickDropModel.dropTimeInputController2.text,
        "city" : dropCityValue2.toString(),
        "state" : dropStateValue2.toString(),
        "stateZipCode" : pickDropModel.dropZipcoadController2.text,
        "name" : mLoadDec.toString(),
        "load_id": mLoadID.toString()
      });

      if(response != null && response.statusCode == 200 && response.data["status"] == 200){
        desplayDropSuccess();

      }else if(response!.statusCode == 500){

        displayErrorSnackbar();
      }


    }catch(e, str){
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");
    }
    setState(() {
      dropLoading2 = false;
    });

  }

  void submitDrop3() async {
    final AuthRepo authRepo = AuthRepo();

    try{
      Response? response = await authRepo.addDrop({
        "date" : pickDropModel.dropDateInputController3.text,
        "time" : pickDropModel.dropTimeInputController3.text,
        "city" : dropCityValue3.toString(),
        "state" : dropStateValue3.toString(),
        "stateZipCode" : pickDropModel.dropZipcoadController3.text,
        "name" : mLoadDec.toString(),
        "load_id": mLoadID.toString()
      });

      if(response != null && response.statusCode == 200 && response.data["status"] == 200){
        desplayDropSuccess();

      }else if(response!.statusCode == 500){

        displayErrorSnackbar();
      }


    }catch(e, str){
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");
    }
    setState(() {
      dropLoading3 = false;
    });

  }

  void desplayDropSuccess() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        duration: Duration(seconds: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        content: Text(
          "Drop Details Registered Successfully",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );

  }

  void displayDropError() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        duration: Duration(seconds: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        content: Text(
          "$errorMessage",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );

  }

  void getLoadID() {
    print("printing load id assssssssssssss$mLoadID");

  }

}
