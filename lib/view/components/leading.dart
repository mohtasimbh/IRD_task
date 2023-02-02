import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Leading extends StatelessWidget {
  const Leading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 57.5),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Hi, Habib 👋',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    letterSpacing: 1.5),
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                'Let’s explore your notes',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white70,
                    letterSpacing: 1.5),
              ),
            ],
          ),
          const Spacer(),
          CircleAvatar(
            radius: 25.r,
            backgroundColor: const Color.fromRGBO(36, 150, 109, 1),
            child: CircleAvatar(
              backgroundColor: const Color.fromRGBO(36, 150, 109, 1),
              backgroundImage: const NetworkImage(
                  'https://miro.medium.com/max/786/1*r_3WfxcZiSTE9EYjLwMzYg.webp'),
              radius: 23.r,
            ),
          ),
        ],
      ),
    );
  }
}
