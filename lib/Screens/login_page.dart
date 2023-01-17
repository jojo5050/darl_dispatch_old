import 'package:darl_dispatch/Constants/colors.dart';
import 'package:darl_dispatch/Utils/routers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/loginbg.png"),
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
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Welcome Back",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: 18.h,
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
                height: 3.h,
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
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextButton(onPressed: (){},
                  child: Text("Forgot password?",
                    style: TextStyle(color: Colors.grey, fontSize: 15.sp),)),
              SizedBox(
                height: 12.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.indigo[500],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide.none)),
                  onPressed: () {
                    Routers.pushNamed(context, '/general_user_dashboard');
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.w, vertical: 2.h),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 13.sp),
                    ),
                  )),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.sp,
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  TextButton(
                      onPressed: () {
                        Routers.pushNamed(context, '/sign_up_page');
                      },
                      child: Text(
                        "SIGN UP",
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
