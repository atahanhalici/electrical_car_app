import 'package:electrical_car_app/constants.dart';
import 'package:electrical_car_app/pages/my_cards.page.dart';
import 'package:electrical_car_app/widgets/bottomnavi.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Profil",
            style: TextStyle(
              color: kTextColor,
              fontSize: 20,
              fontFamily: "Larsseit",
            ),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: kTextColor),
        ),
        bottomNavigationBar: const BottomNavi(
          currentindex: 3,
        ),
        // drawer: Drawer(),
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        "assets/bne.jpg",
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 51, 107, 252),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.create,
                          color: kTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: kDefaultPadding / 2,
                ),
                const Text(
                  "Atahan Halıcı",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 25,
                    fontFamily: "Larsseit",
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding / 6,
                ),
                const Text(
                  "info@atahanhalici.com.tr",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 12,
                    fontFamily: "Larsseit",
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding * 2,
                ),
                kutucuklar("Ayarlar", Icons.settings, () {}),
                kutucuklar("Kuponlarım", Icons.sticky_note_2, () {}),
                kutucuklar("Kayıtlı Kartlarım", Icons.credit_card, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyCardsPage()),
                  );
                }),
                kutucuklar("Bildirimler", Icons.notifications, () {}),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromARGB(255, 51, 107, 252)),
                  child: const Center(
                    child: Text(
                      "Profili Düzenle",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Larsseit",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromARGB(255, 51, 107, 252)),
                  child: const Center(
                    child: Text(
                      "Çıkış Yap",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Larsseit",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
              ],
            ),
          )),
        )));
  }

  Widget kutucuklar(String isim, IconData icon, void Function() function) {
    return Column(
      children: [
        GestureDetector(
          onTap: function,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: kPrimaryColor),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: kTextColor,
                    size: 30,
                  ),
                  const SizedBox(
                    width: kDefaultPadding,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      isim,
                      style: const TextStyle(
                        color: kTextColor,
                        fontSize: 20,
                        fontFamily: "Larsseit",
                      ),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: kTextColor,
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: kDefaultPadding,
        )
      ],
    );
  }
}
