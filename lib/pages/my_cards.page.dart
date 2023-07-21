import 'package:electrical_car_app/constants.dart';
import 'package:electrical_car_app/pages/addcard_page.dart';
import 'package:electrical_car_app/widgets/bottomnavi.dart';
import 'package:flutter/material.dart';

class MyCardsPage extends StatelessWidget {
  const MyCardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Kartlarım",
            style: TextStyle(
              color: kTextColor,
              fontSize: 20,
              fontFamily: "Larsseit",
            ),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: kTextColor),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.add,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddCardPage(
                            cvv: '',
                            numara: '',
                            isim: '',
                            tarih: '',
                          )),
                );
              },
            ),
          ],
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
                              creditCard("ATAHAN HALICI", "4345 2564 2345 6475",
                                  "12/29", "assets/zb.png", context),
                              creditCard("ATAHAN HALICI", "4345 4746 7686 3245",
                                  "09/27", "assets/gb.png", context),
                            ]))))));
  }

  Widget creditCard(
      String isim, String no, String kt, String resim, BuildContext context) {
    String gizlino = no.replaceRange(5, 9, '****');
    gizlino = gizlino.replaceRange(10, 14, '****');
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                offset: Offset(0, 0), // Shadow position
              ),
            ],
          ),
          padding: const EdgeInsets.only(
            top: kDefaultPadding,
            right: 5,
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/card5.png",
                  ),
                  Positioned(
                    left: 35,
                    bottom: 70,
                    child: Text(
                      isim,
                      style: const TextStyle(
                        color: kTextColor,
                        fontSize: 20,
                        fontFamily: "Larsseit",
                      ),
                    ),
                  ),
                  Positioned(
                    left: 35,
                    bottom: 50,
                    child: Text(
                      gizlino,
                      style: const TextStyle(
                        color: kTextColor,
                        fontSize: 15,
                        fontFamily: "Larsseit",
                      ),
                    ),
                  ),
                  Positioned(
                    left: 35,
                    bottom: 30,
                    child: Text(
                      kt,
                      style: const TextStyle(
                        color: kTextColor,
                        fontSize: 15,
                        fontFamily: "Larsseit",
                      ),
                    ),
                  ),
                  Positioned(
                      right: 35,
                      top: -20,
                      child: SizedBox(
                          height: 120, width: 120, child: Image.asset(resim))),
                  Positioned(
                      right: 35,
                      bottom: 18,
                      child: SizedBox(
                          height: 60,
                          width: 60,
                          child: Image.asset("assets/mc.png"))),
                ],
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddCardPage(
                                      cvv: "123",
                                      isim: isim,
                                      numara: no,
                                      tarih: kt,
                                    )),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding),
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(255, 51, 107, 252)),
                          child: const Center(
                            child: Text(
                              "Düzenle",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Larsseit",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: kDefaultPadding / 2,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.red),
                        child: const Center(
                          child: Text(
                            "Sil",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Larsseit",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              )
            ],
          ),
        ),
        const SizedBox(
          height: kDefaultPadding,
        )
      ],
    );
  }
}
