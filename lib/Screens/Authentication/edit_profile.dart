import 'package:darl_dispatch/AuthManagers/authRepo.dart';
import 'package:darl_dispatch/LandingPageManagers/dispatcher_landing_page_manager.dart';
import 'package:darl_dispatch/Models/global_variables.dart';
import 'package:darl_dispatch/Screens/Despatcher/despatcher_Profile_page.dart';
import 'package:darl_dispatch/Screens/Authentication/sign_up_page.dart';
import 'package:darl_dispatch/Utils/form_validators.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utils/localstorage.dart';
import '../../Utils/progress_bar.dart';
import '../../Utils/routers.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> with FormValidators {
  var successMssg;
  var resetPassErrorMssg;

  final GlobalKey<FormState> updateInfoFormKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController telController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  TextEditingController accNumController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  bool loading = false;
  String? userName;
  var email;
  var telNum;
  var address;
  var bankName;
  var accNum;


  @override
  void initState() {
    getProfileDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  nameController = TextEditingController(text: userName);
   telController = TextEditingController(text: telNum);
   bankNameController = TextEditingController(text: bankName);
  accNumController = TextEditingController(text: accNum);
    addressController = TextEditingController(text: address);
   emailController = TextEditingController(text: email);
    return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.indigo,
           title: const Text("Edit Profile", style: TextStyle(color: Colors.white,
               fontWeight: FontWeight.bold)),
         ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
        child: SingleChildScrollView(
          child: Form(
            key: updateInfoFormKey,
            child: Column(children: [

              Align(alignment: Alignment.centerLeft,
                  child: Text("Full Name", style: TextStyle(color: Colors.black,))),
              SizedBox(height: 0.5.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        const BorderSide(color: Colors.black, width: 1)),
                    hintText: "Full Name",
                    hintStyle: TextStyle(color: Colors.black)),
                    controller: nameController,
                   validator: validateName,
                     onChanged: (String val){
                        userName = val;
                      },
              ),


              SizedBox(
                height: 1.h,
              ),
              Align(alignment: Alignment.centerLeft,
                  child: Text("Email", style: TextStyle(color: Colors.black,))),
              SizedBox(height: 0.5.h,),

              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        const BorderSide(color: Colors.black, width: 1)),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.black)),
                controller: emailController,
                validator: validateEmail,
                onChanged: (String val){
                  email = val;
                },
              ),
              SizedBox(
                height: 1.h,
              ),
              Align(alignment: Alignment.centerLeft,
                  child: Text("Telephone", style: TextStyle(color: Colors.black,))),
              SizedBox(height: 0.5.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        const BorderSide(color: Colors.black, width: 1)),
                    hintText: "Telephone",
                    hintStyle: TextStyle(color: Colors.black)),
                controller: telController,
                validator: validatePhoneNum,
                onChanged: (String val){
                  telNum = val;
                },
              ),
              SizedBox(
                height: 1.h,
              ),
              Align(alignment: Alignment.centerLeft,
                  child: Text("Bank Name", style: TextStyle(color: Colors.black,))),
              SizedBox(height: 0.5.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        const BorderSide(color: Colors.black, width: 1)),
                    hintText: "Bank Name",
                    hintStyle: TextStyle(color: Colors.black)),
                controller: bankNameController,
                validator: validateBankName,
                onChanged: (String val){
                  bankName = val;
                },
              ),
              SizedBox(
                height: 1.h,
              ),

              Align(alignment: Alignment.centerLeft,
                  child: Text("Account Number", style: TextStyle(color: Colors.black,))),
              SizedBox(height: 0.5.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        const BorderSide(color: Colors.black, width: 1)),
                    hintText: "Account Number",
                    hintStyle: TextStyle(color: Colors.black)),
                controller: accNumController,
                validator: validateAccNum,
                onChanged: (String val){
                  accNum = val;
                },
              ),
              SizedBox(
                height: 1.h,
              ),

              Align(alignment: Alignment.centerLeft,
                  child: Text("House Address", style: TextStyle(color: Colors.black,))),
              SizedBox(height: 0.5.h,),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  //  border: InputBorder.none,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        const BorderSide(color: Colors.black, width: 1)),
                    hintText: "House Address",
                    hintStyle: TextStyle(color: Colors.black)),
                controller: addressController,
                validator: validateAddress,
                onChanged: (String val){
                  address = val;
                },
              ),
              SizedBox(
                height: 5.h,
              ),
              loading ? ProgressBar():
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.indigo[500],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide.none)),
                  onPressed: () {
                    if(updateInfoFormKey.currentState!.validate()){
                        setState(() {
                          loading = true;
                        });
                        updateInfo();
                    }

                  },
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 30.w, vertical: 2.h),
                    child: Text(
                      "Update",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  )),

            ],),
          ),
        ),
      ),
    );
  }

  void updateInfo() async {
     AuthRepo authRepo = AuthRepo();
     var token = await LocalStorage().fetch("token");
      print("printing token assssssssss${token.toString()}");
     try{
       Response? response = await authRepo.updateUserInfo({
         "jwt": token.toString(),
         "name": nameController.text,
         "tel": telController.text,
         "address": addressController.text,
         "email": emailController.text,
         "bankName" : bankNameController.text,
        "accountNumber" : accNumController.text,
       });

       print("nameeeeeeeee assssssssssss ${nameController.text}");

       if(response != null && response.statusCode == 200){

         showPopUp();

         setState((){
           successMssg = response.data["message"];
         });
         desplaySuccess();

       }else{
         setState((){
           resetPassErrorMssg = response?.data["message"];
         });

         desplayErromssge();
       }
     }catch(e){
       return;
     }
       loading = false;

  }

  void desplaySuccess() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.white,
        duration: Duration(seconds: 2),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        content: Text("$successMssg",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );

  }

  void desplayErromssge() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.white,
        duration: Duration(seconds: 2),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        content: Text("$resetPassErrorMssg",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );

  }

  void getProfileDetails() async {

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
        print("usernameeeeeeeeeee as $userName");
        setState(() {
          email = userdata["email"];
        });
        setState(() {
          telNum = userdata["tel"];
        });
        setState(() {
          address = userdata["address"];
        });
        setState(() {
          bankName = userdata["bankName"];
        });
        setState(() {
          accNum = userdata["accountNumber"];
        });


      }else{

        print("could not retreive it");
      }

    }catch(e){

    }

  }

  void showPopUp() {
    showDialog(
      context: context,
      builder: (ctx) =>
          AlertDialog(shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
            backgroundColor: Colors.black87,
            actions: <Widget>[SizedBox(height: 30,),
              Center(child: Icon(Icons.check_circle_outline,
                color: Colors.green, size: 50.sp,)),
              SizedBox(height: 20,),
              const Center(
                child: Text(" Success!",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 30,),
              const Center(
                child: Text(" Your Details was Updated",
                  style: TextStyle(
                      fontSize: 20, color: Colors.white
                  ),
                ),
              ), SizedBox(height: 5,),
              const Center(
                child: Text("Successfully",
                  style: TextStyle(
                      fontSize: 20, color: Colors.white
                  ),
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                        Routers.pushNamed(context, '/dispatcher_landingPage_manager');
                   /*   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return  DispatcherLandingPageManager(key: keyid,);
                      }));*/
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
                        child: Text("OK", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold),),
                      ),
                    )),
              ),
              SizedBox(height: 10,),

            ],
          ),
    );
  }
}
