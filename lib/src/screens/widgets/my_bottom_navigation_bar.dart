import 'package:flutter/material.dart';
import 'package:zencode_test/custom_icons_icons.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        backgroundBlendMode: BlendMode.clear,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
        boxShadow: [
          BoxShadow(color: Color.fromARGB(95, 150, 150, 150), spreadRadius: 0, blurRadius: 15),
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.085,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(18.0),
          topRight: Radius.circular(18.0),
        ),
        child: BottomNavigationBar(
          iconSize: 23,
          unselectedItemColor: const Color(0xff7C7C7C),
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          selectedLabelStyle: const TextStyle(fontSize: 12),
          items: const [
            BottomNavigationBarItem(icon: Icon(CustomIcons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(CustomIcons.activity), label: "Activities"),
            BottomNavigationBarItem(icon: Icon(CustomIcons.action), label: "Actions"),
            BottomNavigationBarItem(icon: Icon(CustomIcons.offerM), label: "Offers"),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
          ],
          currentIndex: 0,
          selectedItemColor: const Color(0xff14DC9C),
          onTap: (index) {},
        ),
      ),
    );
  }
}