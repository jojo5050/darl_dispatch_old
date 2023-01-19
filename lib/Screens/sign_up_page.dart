import 'package:darl_dispatch/Constants/colors.dart';
import 'package:darl_dispatch/Utils/routers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  String initialCountry = "NG";
  PhoneNumber phoneNum = PhoneNumber(isoCode: "NG");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/signupbg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: const Icon(Icons.arrow_back_ios, size: 30, color: Colors.black,))

                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Enter your details to create an account",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black, fontSize: 18.sp),
                  //  controller: model.regFullnameController,
                  //  validator: validateFullName,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 20,
                      ),
                      fillColor: AppColors.textFieldColor,
                      filled: true,
                      hintText: "Full name",
                      hintStyle: const TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black, fontSize: 18.sp),
                  //  controller: model.regFullnameController,
                  //  validator: validateFullName,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 20,
                      ),
                      fillColor: AppColors.textFieldColor,
                      filled: true,
                      hintText: "Email",
                      hintStyle: const TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),

             Padding(
               padding: EdgeInsets.symmetric(horizontal: 10.w),
               child: Container(
                 height: 60,
                 width: MediaQuery.of(context).size.width / 0.7,
               decoration: BoxDecoration(
                 border: Border.all(width: 1, color: Colors.grey),
                   color: AppColors.textFieldColor,
                   borderRadius: BorderRadius.circular(30)),

                 child: Padding(
                   padding: EdgeInsets.symmetric(horizontal: 5.w),
                   child: InternationalPhoneNumberInput(
                     inputDecoration: const InputDecoration(
                       border: InputBorder.none,
                       hintText: "Phone",
                       hintStyle: TextStyle(color: Colors.black),
                       enabledBorder: InputBorder.none,

                     ),
                       formatInput: true,
                       initialValue: phoneNum,
                       selectorConfig: const SelectorConfig(selectorType:
                       PhoneInputSelectorType.BOTTOM_SHEET),
                       keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
                       onInputChanged: (PhoneNumber phoneNum){

                       },),
                 ),
               ),
             ),

              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black, fontSize: 18.sp),
                  //  controller: model.regFullnameController,
                  //  validator: validateFullName,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black,
                        size: 20,
                      ),
                      fillColor: AppColors.textFieldColor,
                      filled: true,
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(height: 1.h,),
              Text(
                "Minimum of 8 characters, Should contain at List 1 UpperCase" ,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13.sp,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black, fontSize: 18.sp),
                  //  controller: model.regFullnameController,
                  //  validator: validateFullName,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black,
                        size: 20,
                      ),
                      fillColor: AppColors.textFieldColor,
                      filled: true,
                      hintText: "Confirm Password",
                      hintStyle: const TextStyle(color: Colors.black)),
                ),
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
                  Routers.pushNamed(context, '/success_screen');
                  },
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 25.w, vertical: 2.h),
                    child: Text(
                      "Create",
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                  )),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.sp,
                    ),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  TextButton(
                      onPressed: () {
                        Routers.pushNamed(context, '/login_page');
                      },
                      child: Text(
                        "LOG IN",
                        style: TextStyle(color: Colors.blue, fontSize: 15.sp),
                      ))
                  //   Text("SIGN UP", style: TextStyle(color: Colors.blue, fontSize: 15.sp),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}