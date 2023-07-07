import 'package:electrical_car_app/constants.dart';
import 'package:flutter/material.dart';

class BottomNavi extends StatelessWidget {
  const BottomNavi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Anasayfa",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.electrical_services_sharp,
            ),
            label: "İstasyon",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.directions_car_sharp,
            ),
            label: "Konum",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profil",
          ),
        ],
        selectedLabelStyle: const TextStyle(
            color: kTextColor,
            fontFamily: "Larsseit",
            fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(
            color: kTextColor,
            fontFamily: "Larsseit",
            fontWeight: FontWeight.bold),
        unselectedItemColor: kTextColor2,
        backgroundColor: const Color.fromARGB(255, 33, 35, 37),
        fixedColor: const Color.fromARGB(255, 51, 107, 252),
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedFontSize: 12,
        onTap: (index) {});
  }
}
