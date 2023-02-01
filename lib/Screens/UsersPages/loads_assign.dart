import 'package:darl_dispatch/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class LoadsAssigned extends StatefulWidget {
  const LoadsAssigned({Key? key}) : super(key: key);

  @override
  _LoadsAssignedState createState() => _LoadsAssignedState();
}

class _LoadsAssignedState extends State<LoadsAssigned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: SvgPicture.asset(
                  "assets/images/backarrowicon.svg",
                  height: 25,
                  width: 25,
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [Colors.indigo, Colors.lightBlueAccent],
                        begin: Alignment.centerLeft, end: Alignment.centerRight
                    ),
                    borderRadius: BorderRadius.circular(15)),
               /* child: PopupMenuButton(
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
                                  size: 25,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Edit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
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
                                  Icons.check_circle,
                                  color: Colors.green,
                                  size: 25,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Assigned Loads",
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
                                  Icons.text_rotation_none,
                                  color: Colors.green,
                                  size: 25,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "N.A Loads ",
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
                    ]),*/
              ),
            ]),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Assigned Loads",
                  style: TextStyle(
                      color: AppColors.dashboardtextcolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.sp,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ],

        ),
      ),
    );
  }
}
