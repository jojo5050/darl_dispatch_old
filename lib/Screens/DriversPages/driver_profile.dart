import 'package:darl_dispatch/Screens/DriversPages/driver_edit_profile.dart';
import 'package:darl_dispatch/Screens/DriversPages/driver_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DriverProfile extends StatefulWidget {
  const DriverProfile({Key? key}) : super(key: key);

  @override
  _DriverProfileState createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {
  bool switchStatus = false;

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
           padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
           child: Column(
             children: [
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                   children: <Widget>[
                 
                     Column(
                       children: [
                         const Text("Availability", style: TextStyle(color: Colors.black87,
                             fontWeight: FontWeight.bold),),
                         SizedBox(height: 1.h,),
                         FlutterSwitch(
                           activeTextColor: Colors.white,
                           activeColor: Colors.green,
                           width: 80,
                           height: 35,
                           showOnOff: true,
                           borderRadius: 20,
                           toggleSize: 40,
                           padding: 2,
                           onToggle: (value) {
                           setState(() {
                             switchStatus = value;
                           });
                         }, value: switchStatus,),
                       ],
                     ),

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
                               onTap: () {
                                 PersistentNavBarNavigator.pushNewScreen(context, screen: const DriverEditProfile());
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
                                 PersistentNavBarNavigator.pushNewScreen(context, screen: DriverSettings());
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
               SizedBox(height: 2.h,),

               const CircleAvatar(
                 backgroundColor: Colors.grey, radius: 60,
                 child: Icon(Icons.person, color: Colors.white, size: 30,),),
               SizedBox(height: 3.h,),

               Row(mainAxisAlignment: MainAxisAlignment.center,
                 children:  [
                   Text("Joe Emmanuel", style: TextStyle(
                       color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.sp),)
                 ],),
               SizedBox(height: 2.h,),
               Row(mainAxisAlignment: MainAxisAlignment.center,
                 children:  [
                   Text("DRIVER", style: TextStyle(
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
                    ],
                   ),
                 ),
               )
             ],
           ),
         ),
       ) ,
     ),
   );
  }
}
