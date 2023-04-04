import 'package:darl_dispatch/app.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DriverSettings extends StatefulWidget {
  const DriverSettings({Key? key}) : super(key: key);

  @override
  State<DriverSettings> createState() => _DriverSettingsState();
}

class _DriverSettingsState extends State<DriverSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Settings", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 5.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(child: Row(children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),SizedBox(width: 3.w,),

                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Full Name",
                              style: TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Container(
                              constraints: BoxConstraints(maxWidth: 200),
                              child: const Text(
                                "Peter pan",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),

                          ],
                        ),
                      ],),),

                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                decoration: BoxDecoration(color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(child: Row(children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),SizedBox(width: 3.w,),

                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Tel:",
                              style: TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Container(
                              constraints: BoxConstraints(maxWidth: 200),
                              child: const Text(
                                "08099999999",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),

                          ],
                        ),
                      ],),),

                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                decoration: BoxDecoration(color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(child: Row(children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.white,
                          ),
                        ),SizedBox(width: 3.w,),

                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Password",
                              style: TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Container(
                              constraints: BoxConstraints(maxWidth: 200),
                              child: const Text(
                                "*********",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),

                          ],
                        ),
                      ],),),

                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                decoration: BoxDecoration(color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(child: Row(children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.account_balance,
                            color: Colors.white,
                          ),
                        ),SizedBox(width: 3.w,),

                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Bank Name",
                              style: TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Container(
                              constraints: BoxConstraints(maxWidth: 200),
                              child: const Text(
                                "UBA",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),

                          ],
                        ),
                      ],),),

                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                decoration: BoxDecoration(color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(child: Row(children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.account_box_outlined,
                            color: Colors.white,
                          ),
                        ),SizedBox(width: 3.w,),

                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("A/c Name",
                              style: TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Container(
                              constraints: BoxConstraints(maxWidth: 200),
                              child: const Text(
                                "Peter Pan",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),

                          ],
                        ),
                      ],),),

                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                decoration: BoxDecoration(color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(child: Row(children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.numbers,
                            color: Colors.white,
                          ),
                        ),SizedBox(width: 3.w,),

                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("A/c Number",
                              style: TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Container(
                              constraints: BoxConstraints(maxWidth: 200),
                              child: const Text(
                                "09876543324",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),

                          ],
                        ),
                      ],),),

                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                decoration: BoxDecoration(color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(child: Row(children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.house_outlined,
                            color: Colors.white,
                          ),
                        ),SizedBox(width: 3.w,),

                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Address",
                              style: TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Container(
                              constraints: BoxConstraints(maxWidth: 200),
                              child: const Text(
                                "Lugbe Abuja",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),

                          ],
                        ),
                      ],),),

                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h,)

            ],
          ),
        ),
      ),
    );
  }
}
