import 'package:electrical_car_app/constants.dart';
import 'package:electrical_car_app/widgets/bottomnavi.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kBackgroundColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Sürüş için Hazır Mısın?",
                style: TextStyle(color: kTextColor2, fontSize: 15),
              ),
              Text(
                "Tesla Model S",
                style: TextStyle(color: kTextColor, fontSize: 20),
              ),
            ],
          ),
          actions: const [
            CircleAvatar(
              radius: 23,
              backgroundImage: AssetImage(
                "assets/bne.jpg",
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
          iconTheme: const IconThemeData(color: kTextColor),
        ),
        bottomNavigationBar: const BottomNavi(),
        // drawer: Drawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: kDefaultPadding * 2,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Image.asset(
                    "assets/car111.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding * 2,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: (size.width - (3 * kDefaultPadding)) / 2,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: kPrimaryColor),
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      height: 130,
                                      width:
                                          (size.width - (3 * kDefaultPadding)) /
                                              2,
                                    ),
                                    const Positioned(
                                      top: 15,
                                      left: 15,
                                      child: Text(
                                        "Batarya",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: kTextColor,
                                            fontFamily: "Larsseit",
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 38,
                                      left: 15,
                                      child: Text(
                                        "1 Saat 53 Dk Kaldı",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: kTextColor2,
                                            fontFamily: "Larsseit",
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Positioned(
                                        left: 15,
                                        bottom: 10,
                                        child: Container(
                                          width: 50,
                                          height: 80,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Column(
                                            children: [
                                              const Expanded(child: SizedBox()),
                                              const Text(
                                                "%65",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                    fontFamily: "Larsseit",
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Expanded(child: SizedBox()),
                                              Container(
                                                margin: const EdgeInsets.all(2),
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        255, 132, 216, 103),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              )
                                            ],
                                          ),
                                        )),
                                    const Positioned(
                                      top: 80,
                                      left: 85,
                                      child: Text(
                                        "72.3 Kwh",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: kTextColor2,
                                            fontFamily: "Larsseit",
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Positioned(
                                        top: 92,
                                        left: 85,
                                        child: SizedBox(
                                          width: 60,
                                          child: Divider(
                                            color: kTextColor2,
                                            thickness: 1,
                                          ),
                                        )),
                                    const Positioned(
                                      top: 110,
                                      left: 85,
                                      child: Text(
                                        "272 KM",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: kTextColor2,
                                            fontFamily: "Larsseit",
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: kDefaultPadding,
                              ),
                              Column(
                                children: [
                                  Container(
                                    width:
                                        (size.width - (3 * kDefaultPadding)) /
                                            2,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: kPrimaryColor),
                                    child: Stack(
                                      children: [
                                        SizedBox(
                                          height: 130,
                                          width: (size.width -
                                                  (3 * kDefaultPadding)) /
                                              2,
                                        ),
                                        const Positioned(
                                          top: 10,
                                          left: 10,
                                          child: Text(
                                            "Araç Kontrolü",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: kTextColor,
                                                fontFamily: "Larsseit",
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const Positioned(
                                          top: 30,
                                          left: 10,
                                          child: Text(
                                            "Tüm Kapılar Kilitli",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: kTextColor2,
                                                fontFamily: "Larsseit",
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const Positioned(
                                            bottom: 7,
                                            right: 10,
                                            child: Icon(
                                              Icons.lock,
                                              size: 25,
                                              color: Colors.red,
                                            )),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: kDefaultPadding / 2,
                                  ),
                                  Container(
                                    width:
                                        (size.width - (3 * kDefaultPadding)) /
                                            2,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: kPrimaryColor),
                                    child: Stack(
                                      children: [
                                        SizedBox(
                                          height: 130,
                                          width: (size.width -
                                                  (3 * kDefaultPadding)) /
                                              2,
                                        ),
                                        const Positioned(
                                          top: 10,
                                          left: 10,
                                          child: Text(
                                            "Havalandırma",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: kTextColor,
                                                fontFamily: "Larsseit",
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const Positioned(
                                          top: 30,
                                          left: 10,
                                          child: Text(
                                            "17 °C Olarak Ayarlandı",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: kTextColor2,
                                                fontFamily: "Larsseit",
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const Positioned(
                                            bottom: 7,
                                            right: 10,
                                            child: Icon(
                                              Icons.wind_power,
                                              size: 25,
                                              color: Colors.blue,
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: kDefaultPadding,
                          ),
                          Container(
                            height: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: kPrimaryColor),
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 130,
                                  width: size.width - (2 * kDefaultPadding),
                                ),
                                const Positioned(
                                  top: 15,
                                  left: 15,
                                  child: Text(
                                    "Tesla'm Nerede?",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: kTextColor,
                                        fontFamily: "Larsseit",
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Positioned(
                                    top: 38,
                                    left: 10,
                                    child: Icon(
                                      Icons.location_on,
                                      size: 28,
                                      color: Colors.red,
                                    )),
                                const Positioned(
                                    top: 48,
                                    left: 40,
                                    child: Text(
                                      "Atatürk Bulvarı",
                                      style: TextStyle(
                                          color: kTextColor,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Larsseit",
                                          fontSize: 15),
                                    )),
                                Positioned(
                                    top: 75,
                                    left: 15,
                                    child: SizedBox(
                                      width: ((size.width -
                                                  (2 * kDefaultPadding)) /
                                              2) -
                                          25,
                                      child: const Text(
                                        "Atatürk Bulvarı - İlkadım/SAMSUN",
                                        style: TextStyle(
                                            color: kTextColor2,
                                            fontFamily: "Larsseit",
                                            fontSize: 13),
                                      ),
                                    )),
                                Positioned(
                                    top: 10,
                                    right: 10,
                                    child: SizedBox(
                                        width: ((size.width -
                                                    (2 * kDefaultPadding)) /
                                                2) -
                                            5,
                                        height: 110,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    "assets/map.jpg"),
                                                fit: BoxFit.cover),
                                          ),
                                        ))),
                              ],
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
              ],
            ),
          ),
        ));
  }
}
