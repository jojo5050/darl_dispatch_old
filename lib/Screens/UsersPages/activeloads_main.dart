import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ActiveLoadsMain extends StatefulWidget {
  const ActiveLoadsMain({Key? key}) : super(key: key);

  @override
  State<ActiveLoadsMain> createState() => _ActiveLoadsMainState();
}

class _ActiveLoadsMainState extends State<ActiveLoadsMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black87,
        title: Text("Active", style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold),),),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
          child: Column(children: [

            Container(
              height: 80.h,
              child: InkWell(onTap: (){
                /*PersistentNavBarNavigator
                          .pushNewScreen(context, screen: RegisterLoad());*/
              },
                child: Card(
                  color: Colors.green,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 2.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "T-RT88899W266",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.bold),
                              ),

                              const CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 20,
                                  child: Icon(Icons.person, color: Colors.white,))

                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Load Desc:",  style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp, fontWeight: FontWeight.bold)),
                              SizedBox(width: 2.w,),

                              Text("Iron Rods",  style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                            ],

                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Broker:",  style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp, fontWeight: FontWeight.bold)),
                              SizedBox(width: 2.w,),

                              Text("LGTI Logistics",  style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.sp, fontWeight: FontWeight.bold)),
                            ],

                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Drop State: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "New York",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Drop City: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "Bronx",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Drop ZipCode: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "12345",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Drop Date: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "12/2/2003",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),

                          SizedBox(height: 2.h,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Drop Time: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "10:00 AM",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h,),
                          const Divider(
                            color: Colors.white,
                            height: 5,
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                          ),
                          SizedBox(height: 2.h,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Pickup State: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "Califonia",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Pickup City: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "Bronx",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Pickup ZipCode: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "0987650",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Pickup Date: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "10/10/23",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Pickup Time: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "10:00 AM",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h,),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Dispatcher: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "Henry",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Driver: ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 2.w,),
                              Text(
                                "Peter",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

          ],

          ),
        ),
      ),
    );
  }
}
