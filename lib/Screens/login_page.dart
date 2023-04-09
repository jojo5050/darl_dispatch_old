
import 'package:darl_dispatch/Utils/localstorage.dart';
import 'package:darl_dispatch/Utils/routers.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../AuthManagers/authRepo.dart';
import '../ConstantHelper/colors.dart';
import '../Utils/form_validators.dart';
import '../Utils/progress_bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with FormValidators {

  TextEditingController userLoginEmailController = TextEditingController();
  TextEditingController userLoginPasswordController = TextEditingController();
  final GlobalKey<FormState> userLoginFormKey = GlobalKey<FormState>();

  bool loading = false;

  var errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors:
            [Colors.lightBlueAccent, Colors.greenAccent],
                begin: Alignment.centerLeft, end: Alignment.centerRight
            ),

          ),
          child: Form(
            key: userLoginFormKey,
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
                      },
                          icon: const Icon(Icons.arrow_back_ios, size: 30, color: Colors.black,))

                    ],
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
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
                      color: Colors.black,
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
                      controller: userLoginEmailController,
                      validator: validateEmail,
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
                      controller: userLoginPasswordController,
                      validator: validatePassword,

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
                      style: TextStyle(color: Colors.black, fontSize: 15.sp),)),
                SizedBox(
                  height: 12.h,
                ),

                loading ? ProgressBar():
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.indigo[500],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide.none)),
                    onPressed: () {
                      if(userLoginFormKey.currentState!.validate()){
                        setState(() {
                          loading = true;
                        });
                        signin();
                      }
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
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.black,
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
                          style: TextStyle(color: Colors.blue, fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        ))
                    //   Text("SIGN UP", style: TextStyle(color: Colors.blue, fontSize: 15.sp),)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signin() async {
    final AuthRepo authRepo = AuthRepo();

    try{
      Response? response = await authRepo.login({
        "email": userLoginEmailController.text,
        "password": userLoginPasswordController.text
      });

      if(response != null && response.statusCode == 200 && response.data["data"]["role"] == "User"){
        desplayLoginsuccessmssg();
        var role =  response.data["data"]["role"];
        var roles = response.data["role"];

        print("urole asssssssssssss as $role");
        print("urolesssssssssss asssssssssssss as $roles");
        Routers.replaceAllWithName(context, '/driver_landing_manager');
      }

      /*if(response != null && response.statusCode == 200 && response.data["role"] == "Accountant"){
        desplayLoginsuccessmssg();
        Routers.replaceAllWithName(context, '/accountant_landing_manager');
      }

      if(response != null && response.statusCode == 200 && response.data["role"] == "Admin"){
        desplayLoginsuccessmssg();
        Routers.replaceAllWithName(context, '/admin_landing_manager');
      }

      if(response != null && response.statusCode == 200 && response.data["role"] == "Despatcher"){
        desplayLoginsuccessmssg();
        Routers.replaceAllWithName(context, '/dispatcher_landingPage_manager');
      }

      if(response != null && response.statusCode == 200 && response.data["data"]["role"] == "Driver"){
        desplayLoginsuccessmssg();
        Routers.replaceAllWithName(context, '/driver_landing_manager');
      }*/
      else{
        setState(() {
          errorMessage = response?.data["message"];
        });

        displayErrorSnackbar();
      }

    }catch(e, str){
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");

    }

    setState(() {
      loading = false;
    });

  }

  void displayErrorSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.white,
        duration: Duration(seconds: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        content: Text(
          "$errorMessage",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }

  Future desplayLoginsuccessmssg() async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.white,
        duration: Duration(seconds: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        content: Text(
          "Registration Successful",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
