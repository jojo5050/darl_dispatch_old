import 'package:darl_dispatch/app.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UpdateName extends StatefulWidget {
  const UpdateName({Key? key}) : super(key: key);

  @override
  State<UpdateName> createState() => _UpdateNameState();
}

class _UpdateNameState extends State<UpdateName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text("Edit Fullname",
            style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold),),),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
        child: Column(children: [

          TextFormField(
            style: TextStyle(color: Colors.black, fontSize: 18.sp),
            decoration: InputDecoration(
              //  border: InputBorder.none,

                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: Colors.black, width: 1)),
                hintText: "Full Name",
                hintStyle: TextStyle(color: Colors.grey)),
          ),

          SizedBox(height: 20.h,),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.indigo[500],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide.none)),
              onPressed: () {
              },
              child: Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 25.w, vertical: 2.h),
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
    );
  }
}
