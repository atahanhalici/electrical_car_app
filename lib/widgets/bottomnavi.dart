import 'package:electrical_car_app/constants.dart';
import 'package:electrical_car_app/pages/sarjgecmisi_page.dart';
import 'package:electrical_car_app/pages/stations_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavi extends StatelessWidget {
  final int currentindex;
  const BottomNavi({
    Key? key,
    required this.currentindex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset(
                  currentindex != 0
                      ? "assets/icons/home.svg"
                      : "assets/icons/home_mavi.svg",
                  height: 25,
                  width: 25,
                ),
                const SizedBox(
                  height: 8,
                )
              ],
            ),
            label: "Anasayfa",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset(
                  currentindex != 1
                      ? "assets/icons/sarj.svg"
                      : "assets/icons/sarj_mavi.svg",
                  height: 25,
                  width: 25,
                ),
                const SizedBox(
                  height: 8,
                )
              ],
            ),
            label: "İstasyonlar",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Image.asset(
                  currentindex != 2
                      ? "assets/icons/past.png"
                      : "assets/icons/past_mavi.png",
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  height: 3,
                )
              ],
            ),
            label: "Şarj Geçmişi",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset(
                  currentindex != 3
                      ? "assets/icons/user.svg"
                      : "assets/icons/user_mavi.svg",
                  height: 25,
                  width: 25,
                ),
                const SizedBox(
                  height: 8,
                )
              ],
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
        currentIndex: currentindex,
        selectedFontSize: 12,
        onTap: (index) {
          if (index == 0 && currentindex != 0) {
            Navigator.popUntil(context, (route) => route.isFirst);
          } else if (index == 1 && currentindex != 1) {
            if (currentindex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StationsPage()),
              );
            } else {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StationsPage()));
            }
          } else if (index == 2 && currentindex != 2) {
            if (currentindex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SarjGecmisi()),
              );
            } else {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SarjGecmisi()),
              );
            }
          } else {}
        });
  }
}
