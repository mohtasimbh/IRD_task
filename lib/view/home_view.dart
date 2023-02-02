import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ird/view/components/alltask.dart';
import 'package:ird/view/components/leading.dart';
import 'package:ird/view/components/reminder.dart';
import 'package:ird/view/components/welcomw.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Stack(
              children: [
                Image.asset(
                  'images/bg.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Leading(),
                    const Welcome(),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 15, left: 15, top: 20),
                      child: Row(
                        children: [
                          Text(
                            'Reminder Task',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1.0),
                          ),
                          const Spacer(),
                          Text(
                            'See all',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white70,
                                letterSpacing: 1.0),
                          ),
                        ],
                      ),
                    ),
                    const Reminder(),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 15, left: 15, top: 20),
                      child: Row(
                        children: [
                          Text(
                            'All Task',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                letterSpacing: 1.0),
                          ),
                          const Spacer(),
                          Text(
                            'See all',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87,
                                letterSpacing: 1.0),
                          ),
                        ],
                      ),
                    ),
                    const AllTask()
                  ],
                ),
              ],
            )));
  }
}
