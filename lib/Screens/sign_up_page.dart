
import 'package:darl_dispatch/Utils/routers.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../AuthManagers/authRepo.dart';
import '../ConstantHelper/colors.dart';
import '../Utils/form_validators.dart';
import '../Utils/localstorage.dart';
import '../Utils/progress_bar.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with FormValidators {

  TextEditingController userRegFullNameController = TextEditingController();
  TextEditingController userRegEmailController = TextEditingController();
  TextEditingController userRegPhoneNumController = TextEditingController();
  TextEditingController userRegPasswordController = TextEditingController();
  TextEditingController userRegConfirmPassController = TextEditingController();
  final GlobalKey<FormState> userRegFormKey = GlobalKey<FormState>();

  bool loading = false;

  String initialCountry = "NG";
  PhoneNumber phoneNum = PhoneNumber(isoCode: "NG");

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
            key: userRegFormKey,
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
                      color: Colors.black,
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
                      color: Colors.black,
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
                      controller: userRegFullNameController,
                      validator: validateFullName,
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
                      controller: userRegEmailController,
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
                      controller: userRegPasswordController,
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
                SizedBox(height: 1.h,),
                Text(
                  "Minimum of 8 characters" ,
                  style: TextStyle(
                    color: Colors.black,
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
                      controller: userRegConfirmPassController,
                      validator: confirmPassValidator,
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
                loading ? ProgressBar():
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.indigo[500],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide.none)),
                    onPressed: () {
                      if(userRegFormKey.currentState!.validate()){
                        setState(() {
                          loading = true;
                        });
                        signUp();
                      }
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
                        color: Colors.black,
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
                          style: TextStyle(color: Colors.blue,
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
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

  String? confirmPassValidator(String? value) {

    if(value != userRegPasswordController.text){
      return "Password did not match";
    }
    return null;
  }

  void signUp() async {
    final AuthRepo authRepo = AuthRepo();

     try{
        Response? response = await authRepo.register({
          "name": userRegFullNameController.text,
          "email": userRegEmailController.text,
          "tel": userRegPhoneNumController.text,
          "role": "User",
          "password": userRegPasswordController.text

        });

        if(response != null && response.statusCode == 200){
          desplaySignupsuccessmssg();

          Routers.replaceAllWithName(context, '/login_page');

        }
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

  void  displayErrorSnackbar() {
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

  Future desplaySignupsuccessmssg() async {
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