import 'package:electrical_car_app/constants.dart';
import 'package:flutter/material.dart';

class ChargingPage extends StatelessWidget {
  const ChargingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Batarya",
            style: TextStyle(
              color: kTextColor,
              fontSize: 20,
              fontFamily: "Larsseit",
            ),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: kTextColor),
        ),

        // drawer: Drawer(),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kPrimaryColor),
                    child: Column(
                      children: [
                        Row(children: [
                          Image.asset(
                            "assets/icons/sarjpembe.png",
                            height: 25,
                            width: 25,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Expanded(
                            child: SizedBox(
                              child: Text(
                                "Erzincan Binali Yıldırım Üniversitesi Otoparkı",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 25,
                                  fontFamily: "Larsseit",
                                ),
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.info_outline,
                            color: kTextColor2,
                          )
                        ]),
                        const SizedBox(
                          height: 7,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 45),
                          child: Text(
                            "Hürrempalangası, Yalnızbağ yerleşkesi, Sivas Erzincan Yolu, 24002 Yalnızbağ/Erzincan",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: kTextColor2,
                              fontSize: 12,
                              fontFamily: "Larsseit",
                            ),
                          ),
                        )
                      ],
                    )),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Image.asset(
                  "assets/teslafront.png",
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: kDefaultPadding * 2,
                ),
                Row(
                  children: const [
                    Text(
                      "Şarj Ediliyor",
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 25,
                        fontFamily: "Larsseit",
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Text(
                      "%65",
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 25,
                        fontFamily: "Larsseit",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/simsek.png",
                      height: 25,
                      width: 25,
                    ),
                    const Text(
                      "Hızlı Şarj",
                      style: TextStyle(
                        color: kTextColor2,
                        fontSize: 15,
                        fontFamily: "Larsseit",
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    const Text(
                      "272 Km Gidilebilir",
                      style: TextStyle(
                        color: kTextColor2,
                        fontSize: 15,
                        fontFamily: "Larsseit",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Container(
                    padding: const EdgeInsets.all(12),
                    height: 135,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kPrimaryColor),
                    child: Column(
                      children: [
                        Row(children: const [
                          Text(
                            "1 Saat 53 Dk",
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 20,
                              fontFamily: "Larsseit",
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            "Tahmini Şarj Zamanı · Anlık 4.79 Volt",
                            style: TextStyle(
                              color: kTextColor2,
                              fontSize: 12,
                              fontFamily: "Larsseit",
                            ),
                          ),
                        ]),
                        const SizedBox(
                          height: 10,
                        ),
                        kutucuklar(context),
                      ],
                    )),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 51, 107, 252)),
                  child: const Center(
                    child: Text(
                      "Şarjı Durdur",
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
          ),
        )));
  }

  kutucuklar(BuildContext context) {
    double genislik = ((MediaQuery.of(context).size.width) -
            (2 * kDefaultPadding) -
            (2 * 12 + 7 * 4)) /
        8;
    return Row(
      children: [
        Container(
          height: 80,
          width: genislik,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 132, 216, 103),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Container(
          height: 80,
          width: genislik,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 132, 216, 103),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Container(
          height: 80,
          width: genislik,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 132, 216, 103),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Container(
          height: 80,
          width: genislik,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 132, 216, 103),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Container(
          height: 80,
          width: genislik,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 132, 216, 103),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Container(
          height: 80,
          width: genislik,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Center(
            child: Image.asset("assets/icons/sarisimsek.png"),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Container(
          height: 80,
          width: genislik,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
        ),
        const SizedBox(
          width: 4,
        ),
        Container(
          height: 80,
          width: genislik,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
