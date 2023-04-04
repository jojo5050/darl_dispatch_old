import 'package:darl_dispatch/Screens/UsersPages/edit_profile.dart';
import 'package:darl_dispatch/Screens/UsersPages/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/generalDashBoardBg.png"),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                   /* IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    },
                        icon: const Icon(Icons.arrow_back_ios, size: 30, color: Colors.black,)),*/
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [Colors.indigo, Colors.lightBlueAccent],
                              begin: Alignment.centerLeft, end: Alignment.centerRight
                          ),
                       //   color: Colors.indigo,
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
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 1,
                              child: Container(
                                child: GestureDetector(
                                  onTap: (){
                                    PersistentNavBarNavigator.pushNewScreen(context, screen: const EditProfile());
                                  },
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.edit,
                                        color: Colors.green,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Edit",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            PopupMenuItem(
                              value: 1,
                              child: Container(
                                child: InkWell(
                                  onTap: () {
                                    //   Routers.pushNamed(context, '/faq');
                                  },
                                  child: InkWell(
                                    onTap: (){
                                      PersistentNavBarNavigator.pushNewScreen(context, screen: const Settings());
                                    },
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.settings,
                                          color: Colors.green,
                                          size: 20,
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Settings",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            PopupMenuItem(
                              value: 1,
                              child: Container(
                                child: InkWell(
                                  onTap: () {
                                    //   Routers.pushNamed(context, '/faq');
                                  },
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.logout,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "LogOut",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 15.sp,
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
                  SizedBox(height: 1.h,),

                  const CircleAvatar(
                    backgroundColor: Colors.grey, radius: 70,
                    child: Icon(Icons.person, color: Colors.white, size: 30,),),
                  SizedBox(height: 2.h,),

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                    Text("Joe Emmanuel", style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.sp),)
                  ],),
                  SizedBox(height: 1.h,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text("DISPATCHER", style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic, fontSize: 18.sp),)
                    ],),
                  SizedBox(height: 3.h,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2.5,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [Colors.lightBlueAccent, Colors.indigo],
                            begin: Alignment.centerLeft, end: Alignment.centerRight
                        ),
                      //  color: Colors.indigo,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 4.h),
                      child: Column(children: [
                            Row(
                              children: [
                                Text("TEL:", style: TextStyle(color: Colors.black,
                                    fontSize: 19.sp, fontWeight: FontWeight.bold),),
                                SizedBox(width: 2.w,),
                                Text("08109939963", style: TextStyle(color: Colors.white,
                                    fontSize: 18.sp, fontWeight: FontWeight.bold),),
                              ],
                            ),
                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            Text("Email:", style: TextStyle(color: Colors.black,
                                fontSize: 18.sp, fontWeight: FontWeight.bold),),
                            SizedBox(width: 2.w,),
                            Text("example@gmail.com", style: TextStyle(color: Colors.white,
                                fontSize: 18.sp, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            Text("A/C Name:", style: TextStyle(color: Colors.black,
                                fontSize: 18.sp, fontWeight: FontWeight.bold),),
                            SizedBox(width: 2.w,),
                            Text("Peter Sam", style: TextStyle(color: Colors.white,
                                fontSize: 18.sp, ),),
                          ],
                        ),
                        SizedBox(height: 2.h, ),
                        Row(
                          children: [
                            Text("A/C Number:", style: TextStyle(color: Colors.black,
                                fontSize: 18.sp, fontWeight: FontWeight.bold),),
                            SizedBox(width: 2.w,),
                            Text("0900099000", style: TextStyle(color: Colors.white,
                                fontSize: 18.sp, fontWeight: FontWeight.bold),),
                          ],
                        ),

                        SizedBox(height: 2.h, ),
                        Row(
                          children: [
                            Text("Bank Name:", style: TextStyle(color: Colors.black,
                                fontSize: 18.sp, fontWeight: FontWeight.bold),),
                            SizedBox(width: 2.w,),
                            Text("UBA", style: TextStyle(color: Colors.white,
                                fontSize: 18.sp, fontWeight: FontWeight.bold),),
                          ],
                        ),

                        SizedBox(height: 2.h, ),
                        Row(
                          children: [
                            Text("Address:", style: TextStyle(color: Colors.black,
                                fontSize: 18.sp, fontWeight: FontWeight.bold),),
                            SizedBox(width: 2.w,),
                            Text("Lugbe Abuja", style: TextStyle(color: Colors.white,
                                fontSize: 18.sp, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],),
                    ),
                  )
                ],

              ),
            ),
          ),
      ),
    );
  }
}
