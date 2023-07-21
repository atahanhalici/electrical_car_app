import 'package:avatar_glow/avatar_glow.dart';
import 'package:electrical_car_app/constants.dart';
import 'package:flutter/material.dart';

class HavalandirmaPage extends StatefulWidget {
  const HavalandirmaPage({Key? key}) : super(key: key);

  @override
  State<HavalandirmaPage> createState() => _HavalandirmaPageState();
}

class _HavalandirmaPageState extends State<HavalandirmaPage> {
  bool sofor = false;
  bool soforyukle = false;
  bool yolcu = false;
  bool yolcuyukle = false;
  bool arka1 = false;
  bool arka1yukle = false;
  bool arka2 = false;
  bool arka2yukle = false;
  double derece = 17.0;
  bool klima = false;
  bool klimayukle = false;
  bool camarala = false;
  bool camaralayukle = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          title: const Text(
            "Havalandırma",
            style: TextStyle(
              color: kTextColor,
              fontSize: 20,
              fontFamily: "Larsseit",
            ),
          ),
          centerTitle: true,
          backgroundColor: kBackgroundColor,
          expandedHeight: 500,
          collapsedHeight: 100,

          pinned: true,
          // snap: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Padding(
              padding: const EdgeInsets.only(
                  //bottom: kDefaultPadding * 5,
                  //left: kDefaultPadding * 5,
                  // right: kDefaultPadding * 5,
                  ),
              child: Padding(
                padding: EdgeInsets.only(left: size.width * 0.01),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/aracklima.png",
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: size.height * 0.16,
                      left: size.width * 0.25,
                      child: GestureDetector(
                        onTap: () {
                          soforisitma();
                        },
                        child: AvatarGlow(
                          endRadius: 30,
                          animate: soforyukle,
                          duration: const Duration(milliseconds: 2000),
                          glowColor: const Color.fromARGB(255, 51, 107, 252),
                          repeat: true,
                          repeatPauseDuration:
                              const Duration(milliseconds: 100),
                          showTwoGlows: true,
                          child: Image.asset(
                            sofor == true
                                ? "assets/icons/kisitmaacik.png"
                                : "assets/icons/kisitma.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.16,
                      right: size.width * 0.26,
                      child: GestureDetector(
                        onTap: () {
                          yolcuisitma();
                        },
                        child: AvatarGlow(
                          endRadius: 30,
                          animate: yolcuyukle,
                          duration: const Duration(milliseconds: 2000),
                          glowColor: const Color.fromARGB(255, 51, 107, 252),
                          repeat: true,
                          repeatPauseDuration:
                              const Duration(milliseconds: 100),
                          showTwoGlows: true,
                          child: Image.asset(
                            yolcu == true
                                ? "assets/icons/kisitmaacik.png"
                                : "assets/icons/kisitma.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: size.height * 0.28,
                      right: size.width * 0.27,
                      child: GestureDetector(
                        onTap: () {
                          arka2isitma();
                        },
                        child: AvatarGlow(
                          endRadius: 30,
                          animate: arka2yukle,
                          duration: const Duration(milliseconds: 2000),
                          glowColor: const Color.fromARGB(255, 51, 107, 252),
                          repeat: true,
                          repeatPauseDuration:
                              const Duration(milliseconds: 100),
                          showTwoGlows: true,
                          child: Image.asset(
                            arka2 == true
                                ? "assets/icons/kisitmaacik.png"
                                : "assets/icons/kisitma.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: size.height * 0.28,
                      left: size.width * 0.25,
                      child: GestureDetector(
                        onTap: () {
                          arka1isitma();
                        },
                        child: AvatarGlow(
                          endRadius: 30,
                          animate: arka1yukle,
                          duration: const Duration(milliseconds: 2000),
                          glowColor: const Color.fromARGB(255, 51, 107, 252),
                          repeat: true,
                          repeatPauseDuration:
                              const Duration(milliseconds: 100),
                          showTwoGlows: true,
                          child: Image.asset(
                            arka1 == true
                                ? "assets/icons/kisitmaacik.png"
                                : "assets/icons/kisitma.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Container(
                height: 40,
                width: size.width,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: const Center(
                  child: Text(
                    "Havalandırma Detayları",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 20,
                      fontFamily: "Larsseit",
                    ),
                  ),
                ),
              )),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1),
          delegate: SliverChildListDelegate([
            Container(
              color: kPrimaryColor,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                    top: kDefaultPadding),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "İç: 20 °C    ·    Dış 7 °C",
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 13,
                              fontFamily: "Larsseit",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              klimayukleme();
                            },
                            child: Stack(
                              children: [
                                const SizedBox(
                                  width: 60,
                                  height: 65,
                                ),
                                Positioned(
                                  bottom: 10,
                                  child: AvatarGlow(
                                    endRadius: 30,
                                    animate: klimayukle,
                                    duration:
                                        const Duration(milliseconds: 2000),
                                    glowColor:
                                        const Color.fromARGB(255, 51, 107, 252),
                                    repeat: true,
                                    repeatPauseDuration:
                                        const Duration(milliseconds: 100),
                                    showTwoGlows: true,
                                    child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: Image.asset(klima == false
                                            ? "assets/icons/acikkapali.png"
                                            : "assets/icons/acikkapalimavi.png")),
                                  ),
                                ),
                                Positioned(
                                  top: 50,
                                  left: klima == false ? 9 : 15,
                                  child: Text(
                                    klima == false ? "Kapalı" : "Açık",
                                    style: const TextStyle(
                                      color: kTextColor,
                                      fontSize: 15,
                                      fontFamily: "Larsseit",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              derece = derece - 0.5;
                              setState(() {});
                            },
                            child: const Text(
                              "<",
                              style: TextStyle(
                                color: kTextColor,
                                fontSize: 70,
                                fontFamily: "Larsseit",
                              ),
                            ),
                          ),
                          Text(
                            "$derece °C",
                            style: const TextStyle(
                              color: kTextColor,
                              fontSize: 40,
                              fontFamily: "Larsseit",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              derece = derece + 0.5;
                              setState(() {});
                            },
                            child: const Text(
                              ">",
                              style: TextStyle(
                                color: kTextColor,
                                fontSize: 70,
                                fontFamily: "Larsseit",
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              camaralama();
                            },
                            child: Stack(
                              children: [
                                const SizedBox(
                                  width: 80,
                                  height: 65,
                                ),
                                Positioned(
                                  left: 5,
                                  bottom: 10,
                                  child: AvatarGlow(
                                    endRadius: 30,
                                    animate: camaralayukle,
                                    duration:
                                        const Duration(milliseconds: 2000),
                                    glowColor:
                                        const Color.fromARGB(255, 51, 107, 252),
                                    repeat: true,
                                    repeatPauseDuration:
                                        const Duration(milliseconds: 100),
                                    showTwoGlows: true,
                                    child: SizedBox(
                                        width: 45,
                                        height: 45,
                                        child: Image.asset(
                                          camarala == false
                                              ? "assets/icons/windowblack.png"
                                              : "assets/icons/windowmavi.png",
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                const Positioned(
                                  right: 9,
                                  top: 50,
                                  child: Text(
                                    "Cam Arala",
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 15,
                                      fontFamily: "Larsseit",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: kDefaultPadding * 2,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            // color: kBackgroundColor,
                            border: Border.all(
                              color: kTextColor2,
                            ),
                            borderRadius: BorderRadius.circular(3)),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: Image.asset("assets/icons/aracbuz.png")),
                            const SizedBox(
                              width: kDefaultPadding,
                            ),
                            const Text(
                              "Araçta Buz Çöz",
                              style: TextStyle(
                                color: kTextColor,
                                fontSize: 15,
                                fontFamily: "Larsseit",
                              ),
                            ),
                            const Expanded(child: SizedBox())
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            // color: kBackgroundColor,
                            border: Border.all(color: kTextColor2),
                            borderRadius: BorderRadius.circular(3)),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: Image.asset("assets/icons/biyo.png")),
                            const SizedBox(
                              width: kDefaultPadding,
                            ),
                            const Text(
                              "Biyolojik Silah Savunma Modu",
                              style: TextStyle(
                                color: kTextColor,
                                fontSize: 15,
                                fontFamily: "Larsseit",
                              ),
                            ),
                            const Expanded(child: SizedBox())
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            // color: kBackgroundColor,
                            border: Border.all(color: kTextColor2),
                            borderRadius: BorderRadius.circular(3)),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: Image.asset("assets/icons/camp.png")),
                            const SizedBox(
                              width: kDefaultPadding,
                            ),
                            const Text(
                              "Kamp Modu",
                              style: TextStyle(
                                color: kTextColor,
                                fontSize: 15,
                                fontFamily: "Larsseit",
                              ),
                            ),
                            const Expanded(child: SizedBox())
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            // color: kBackgroundColor,
                            border: Border.all(color: kTextColor2),
                            borderRadius: BorderRadius.circular(3)),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: Image.asset("assets/icons/paw.png")),
                            const SizedBox(
                              width: kDefaultPadding,
                            ),
                            const Text(
                              "Evcil Hayvan Modu",
                              style: TextStyle(
                                color: kTextColor,
                                fontSize: 15,
                                fontFamily: "Larsseit",
                              ),
                            ),
                            const Expanded(child: SizedBox())
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: kDefaultPadding * 2,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Kokpit Aşırı Isınma Koruması",
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 15,
                            fontFamily: "Larsseit",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: kBackgroundColor,
                            borderRadius: BorderRadius.circular(3)),
                        height: 50,
                        child: Row(children: [
                          Expanded(
                              child: Container(
                            color: Color.fromARGB(255, 48, 50, 51),
                            child: const Center(
                              child: Text(
                                "Kapalı",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 15,
                                  fontFamily: "Larsseit",
                                ),
                              ),
                            ),
                          )),
                          Container(
                            height: double.infinity,
                            width: 1,
                            color: Colors.black,
                          ),
                          Expanded(
                              child: Container(
                            color: Color.fromARGB(255, 48, 50, 51),
                            child: const Center(
                              child: Text(
                                "Klimasız",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 15,
                                  fontFamily: "Larsseit",
                                ),
                              ),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            color: Colors.black,
                            child: const Center(
                              child: Text(
                                "Açık",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 15,
                                  fontFamily: "Larsseit",
                                ),
                              ),
                            ),
                          ))
                        ]),
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Devreye Girme Sıcaklığı",
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 15,
                            fontFamily: "Larsseit",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: kBackgroundColor,
                            borderRadius: BorderRadius.circular(3)),
                        height: 50,
                        child: Row(children: [
                          Expanded(
                              child: Container(
                            color: Color.fromARGB(255, 48, 50, 51),
                            child: const Center(
                              child: Text(
                                "30 °C",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 15,
                                  fontFamily: "Larsseit",
                                ),
                              ),
                            ),
                          )),
                          Container(
                            height: double.infinity,
                            width: 1,
                            color: Colors.black,
                          ),
                          Expanded(
                              child: Container(
                            color: Color.fromARGB(255, 48, 50, 51),
                            child: const Center(
                              child: Text(
                                "35 °C",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 15,
                                  fontFamily: "Larsseit",
                                ),
                              ),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            color: Colors.black,
                            child: const Center(
                              child: Text(
                                "40 °C",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 15,
                                  fontFamily: "Larsseit",
                                ),
                              ),
                            ),
                          ))
                        ]),
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ]),
    );
  }

  void soforisitma() async {
    if (sofor == false) {
      soforyukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      sofor = true;
      soforyukle = false;
      setState(() {});
    } else {
      soforyukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      sofor = false;
      soforyukle = false;
      setState(() {});
    }
  }

  void yolcuisitma() async {
    if (yolcu == false) {
      yolcuyukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      yolcu = true;
      yolcuyukle = false;
      setState(() {});
    } else {
      yolcuyukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      yolcu = false;
      yolcuyukle = false;
      setState(() {});
    }
  }

  arka2isitma() async {
    if (arka2 == false) {
      arka2yukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      arka2 = true;
      arka2yukle = false;
      setState(() {});
    } else {
      arka2yukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      arka2 = false;
      arka2yukle = false;
      setState(() {});
    }
  }

  arka1isitma() async {
    if (arka1 == false) {
      arka1yukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      arka1 = true;
      arka1yukle = false;
      setState(() {});
    } else {
      arka1yukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      arka1 = false;
      arka1yukle = false;
      setState(() {});
    }
  }

  void klimayukleme() async {
    if (klima == false) {
      klimayukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      klima = true;
      klimayukle = false;
      setState(() {});
    } else {
      klimayukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      klima = false;
      klimayukle = false;
      setState(() {});
    }
  }

  void camaralama() async {
    if (camarala == false) {
      camaralayukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      camarala = true;
      camaralayukle = false;
      setState(() {});
    } else {
      camaralayukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      camarala = false;
      camaralayukle = false;
      setState(() {});
    }
  }
}
