import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 37.5, right: 15, left: 15),
      child: Container(
          height: 160.h,
          width: 330.w,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(255, 255, 255, 0.1),
              style: BorderStyle.solid,
              width: 1.0,
            ),
            color: const Color.fromRGBO(255, 255, 255, 0.1),
            borderRadius: BorderRadius.circular(15.0.r),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Welcome to TickTick Task',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 1.5),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Your one-stop app for task management. Simplify, track, and accomplish tasks with ease.',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 40.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromRGBO(255, 255, 255, 0.3)),
                          color: const Color.fromRGBO(36, 150, 109, 1),
                          borderRadius: BorderRadius.circular(70.r)),
                      child: Row(children: const [
                        Icon(
                          IconlyBold.play,
                          color: Colors.white,
                        ),
                        Text(
                          'Watch Video',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    const Spacer(),
                    Image.asset(
                      'images/banner.png',
                      height: 60.h,
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
