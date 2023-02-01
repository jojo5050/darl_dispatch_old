import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DriverProfile extends StatefulWidget {
  const DriverProfile({Key? key}) : super(key: key);

  @override
  _DriverProfileState createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {
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
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                 IconButton(onPressed: (){
                   Navigator.of(context).pop();
                 },
                     icon: const Icon(Icons.arrow_back_ios, size: 30, color: Colors.black,)),
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
                                 //   Routers.pushNamed(context, "/settings");
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
                                         fontSize: 14.sp,
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
                                         fontSize: 14.sp,
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
                 backgroundColor: Colors.grey, radius: 70,
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
                     gradient: const LinearGradient(colors: [Colors.indigo, Colors.lightBlueAccent],
                         begin: Alignment.centerLeft, end: Alignment.centerRight
                     ),
                     //  color: Colors.indigo,
                     borderRadius: BorderRadius.circular(25)),
                 child: Padding(
                   padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                   child: Column(children: [
                     Text("Driver Info", style: TextStyle(color: Colors.white, fontSize: 17.sp),),

                   ],),
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
