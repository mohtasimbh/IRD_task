import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ird/view/home_view.dart';
import 'package:ird/view/record.dart';
import 'package:ird/view/saved.dart';
import 'package:ird/view/search.dart';
import 'package:ird/view/setting.dart';

class ButtomBar extends StatefulWidget {
  const ButtomBar({Key? key}) : super(key: key);

  @override
  State<ButtomBar> createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  List<Widget> pages = [
    const HomeView(),
    const Search(),
    const Record(),
    const Saved(),
    const Setting()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        selectedFontSize: 12.sp,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: const Color.fromRGBO(44, 136, 119, 1),
        unselectedItemColor: const Color.fromRGBO(180, 193, 192, 1),
        unselectedLabelStyle: const TextStyle(
          color: Color.fromRGBO(180, 193, 192, 1),
        ),
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              IconlyBold.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyBold.search,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                IconlyBold.play,
              ),
              label: "Record"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.save,
              ),
              label: "Saved"),
          BottomNavigationBarItem(
              icon: Icon(
                IconlyBold.setting,
              ),
              label: "Settings"),
        ],
      ),
    );
  }
}
