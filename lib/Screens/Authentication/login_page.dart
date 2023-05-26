
import 'package:darl_dispatch/Screens/Authentication/fb_auth_service.dart';
import 'package:darl_dispatch/Utils/localstorage.dart';
import 'package:darl_dispatch/Utils/routers.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../AuthManagers/authRepo.dart';
import '../../ConstantHelper/colors.dart';
import '../../Models/fb_auth_model.dart';
import '../../Utils/form_validators.dart';
import '../../Utils/progress_bar.dart';

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
  bool _passwordVisible =false;

  var errorMessage;

  var erroMsg;
  final FbAuthService fbAuthService = FbAuthService();

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors:
              [Colors.lightBlueAccent, Colors.greenAccent],
                  begin: Alignment.centerLeft, end: Alignment.centerRight),)
        ),
        SingleChildScrollView(
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
                            borderRadius: BorderRadius.circular(15)),
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
                    obscureText: !_passwordVisible,
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
                            borderRadius: BorderRadius.circular(15)),
                        suffixIcon: IconButton(icon: Icon(_passwordVisible ? Icons.visibility
                            : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },),
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
                TextButton(onPressed: (){
                  Routers.pushNamed(context, '/forgotPassEmail');
                },
                    child: Text("Forgot password?",
                      style: TextStyle(color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold),)),
                SizedBox(
                  height: 12.h,
                ),

              //  loading ? ProgressBar():
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.indigo,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide.none)),
                    onPressed: () {
                      if(userLoginFormKey.currentState!.validate()){
                        startLoader();
                        signin();
                       // showLoader();
                      }
                    },
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 2.h),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 17.sp),
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


      ])
    );
  }

  void signin() async {
    final AuthRepo authRepo = AuthRepo();
    try{
      Response? response = await authRepo.login({
        "email": userLoginEmailController.text,
        "password": userLoginPasswordController.text
      });

      if(response != null && response.statusCode == 200
          && response.data["user-info"]["role"] == "User"){
        desplayLoginsuccessmssg();
        await LocalStorage().store("userData", response.data["user-info"]);
        await LocalStorage().store("token", response.data["data"]["token"]);
        await LocalStorage().store("roleKey", response.data["user-info"]["role"]);
        await LocalStorage().store("idKey", response.data["user-info"]["id"]);

        loginToFirebase(userLoginEmailController.text, userLoginPasswordController.text);
        Routers.replaceAllWithName(context, '/initial_dashboard');
      }

      if(response != null && response.statusCode == 200
          && response.data["user-info"]["role"] == "Accountant"){
        desplayLoginsuccessmssg();
        await LocalStorage().store("userData", response.data["user-info"]);
        await LocalStorage().store("token", response.data["data"]["token"]);
        await LocalStorage().store("roleKey", response.data["user-info"]["role"]);
        await LocalStorage().store("idKey", response.data["user-info"]["id"]);

        loginToFirebase(userLoginEmailController.text, userLoginPasswordController.text);
        Routers.replaceAllWithName(context, '/accountant_landing_manager');
      }

      if(response != null && response.statusCode == 200
          && response.data["user-info"]["role"] == "Admin"){
        desplayLoginsuccessmssg();
        await LocalStorage().store("userData", response.data["user-info"]);
        await LocalStorage().store("token", response.data["data"]["token"]);
        await LocalStorage().store("roleKey", response.data["user-info"]["role"]);
        await LocalStorage().store("idKey", response.data["user-info"]["id"]);

        loginToFirebase(userLoginEmailController.text, userLoginPasswordController.text);
        Routers.replaceAllWithName(context, '/admin_landing_manager');
      }

      if(response != null && response.statusCode == 200
          && response.data["user-info"]["role"] == "Despatcher"){
        desplayLoginsuccessmssg();
        await LocalStorage().store("userData", response.data["user-info"]);
        await LocalStorage().store("token", response.data["data"]["token"]);
        await LocalStorage().store("roleKey", response.data["user-info"]["role"]);
        await LocalStorage().store("idKey", response.data["user-info"]["id"]);

        loginToFirebase(userLoginEmailController.text, userLoginPasswordController.text);
        Routers.replaceAllWithName(context, '/dispatcher_landingPage_manager');
      }

      if(response != null && response.statusCode == 200
          && response.data["user-info"]["role"] == "Driver"){
        desplayLoginsuccessmssg();
        await LocalStorage().store("userData", response.data["user-info"]);
        await LocalStorage().store("token", response.data["data"]["token"]);
        await LocalStorage().store("roleKey", response.data["user-info"]["role"]);
        await LocalStorage().store("idKey", response.data["user-info"]["id"]);

        loginToFirebase(userLoginEmailController.text, userLoginPasswordController.text);
        Routers.replaceAllWithName(context, '/driver_landing_manager');
      }
       if(response != null && response.statusCode == 200
          && response.data["status"] == 400){
          setState(() {
            errorMessage = response.data["message"];
          });
          displayError();
          stopLoader();
      }

       else if(response == null){
         displayServerError();
         stopLoader();
       }

    }catch(e, str){
      debugPrint("Error: $e");
      debugPrint("StackTrace: $str");

    }
  }

  Future desplayLoginsuccessmssg() async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        duration: Duration(seconds: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        content: Text(
          "Login Successful",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }

  void displayError() {
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

  Future<void> startLoader() async {
    return await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const SimpleDialog(
          elevation: 0.0,
          backgroundColor: Colors.white, // can change this to your prefered color
          children: <Widget>[
            Center(
              child: ProgressBar(),
            )
          ],
        );
      },
    );
  }

  Future<void> stopLoader() async {
    Navigator.of(context).pop();
  }

  void displayServerError() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        duration: Duration(seconds: 3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        content: Text(
          "Server not reachable, try again",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }

  Future loginToFirebase(
      String email, String password) async {
    try {
      User? firebaseUser = (await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password)).user;
      if(firebaseUser != null){
        return firebaseAuth.currentUser?.uid;
      }

    } on FirebaseAuthException catch(e){
      var errMssg = "An error has occurred ";
      switch(e.code){
        case "invalid-email":
          errMssg = "the email address is invalid";
          break;

        case "user-disabled":
          errMssg = "the user has been disabled";
          break;

        case "wrong-password":
          errMssg = "You entered a wrong password";
          break;

        case "user-not-found":
          errMssg = "No user found for the given credentials";
          break;
      }
      rethrow;
    }
  }
}
