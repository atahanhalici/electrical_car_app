import 'package:avatar_glow/avatar_glow.dart';
import 'package:electrical_car_app/constants.dart';
import 'package:flutter/material.dart';

class AracKontrolPage extends StatefulWidget {
  const AracKontrolPage({Key? key}) : super(key: key);

  @override
  State<AracKontrolPage> createState() => _AracKontrolPageState();
}

class _AracKontrolPageState extends State<AracKontrolPage> {
  bool far = false;
  bool korna = false;
  bool calistir = false;
  bool camArala = false;
  bool kilit = true;
  bool kilityukle = false;
  bool bagaj = false;
  bool bagajyukle = false;
  bool kaput = false;
  bool kaputyukle = false;
  bool cam = false;
  bool faryukle = false;
  bool calistiryukle = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kBackgroundColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Araç Kontrolü",
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                height: size.height - 200,
                                width: size.width - 2 * kDefaultPadding,
                                child: Image.asset(
                                  "assets/aracust.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Positioned(
                                top: size.height / 2 - 310,
                                left: size.width / 2 - 50,
                                child: AvatarGlow(
                                  endRadius: 30,
                                  animate: kaputyukle,
                                  duration: const Duration(milliseconds: 2000),
                                  glowColor:
                                      const Color.fromARGB(255, 51, 107, 252),
                                  repeat: true,
                                  repeatPauseDuration:
                                      const Duration(milliseconds: 100),
                                  showTwoGlows: true,
                                  child: GestureDetector(
                                    onTap: () {
                                      kaputYukleme();
                                    },
                                    child: Text(
                                      kaput == false ? "Aç" : "Kapat",
                                      style: const TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 20,
                                        fontFamily: "Larsseit",
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: size.height / 3 + 22,
                                left: size.width / 2 - 50,
                                child: AvatarGlow(
                                  endRadius: 30,
                                  animate: kilityukle,
                                  duration: const Duration(milliseconds: 2000),
                                  glowColor:
                                      const Color.fromARGB(255, 51, 107, 252),
                                  repeat: true,
                                  repeatPauseDuration:
                                      const Duration(milliseconds: 100),
                                  showTwoGlows: true,
                                  child: GestureDetector(
                                    onTap: () {
                                      kilitYukleme();
                                    },
                                    child: Image.asset(
                                      kilit == true
                                          ? "assets/icons/kilit.png"
                                          : "assets/icons/kilitacik.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: size.height / 2 + 45,
                                left: size.width / 2 - 50,
                                child: AvatarGlow(
                                  endRadius: 30,
                                  animate: bagajyukle,
                                  duration: const Duration(milliseconds: 2000),
                                  glowColor:
                                      const Color.fromARGB(255, 51, 107, 252),
                                  repeat: true,
                                  repeatPauseDuration:
                                      const Duration(milliseconds: 100),
                                  showTwoGlows: true,
                                  child: GestureDetector(
                                    onTap: () {
                                      bagajYukleme();
                                    },
                                    child: Text(
                                      bagaj == false ? "Aç" : "Kapat",
                                      style: const TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 20,
                                        fontFamily: "Larsseit",
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: kDefaultPadding,
                          ),
                          Icons(),
                          const SizedBox(
                            height: kDefaultPadding,
                          ),
                        ])))));
  }

  // ignore: non_constant_identifier_names
  Widget Icons() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: kPrimaryColor),
      height: 80,
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              faryak();
            },
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: AvatarGlow(
                    endRadius: 30,
                    animate: faryukle,
                    duration: const Duration(milliseconds: 2000),
                    glowColor: const Color.fromARGB(255, 51, 107, 252),
                    repeat: true,
                    repeatPauseDuration: const Duration(milliseconds: 100),
                    showTwoGlows: true,
                    child: CircleAvatar(
                      backgroundColor: far == false
                          ? kBackgroundColor
                          : const Color.fromARGB(255, 51, 107, 252),
                      child: Image.asset(
                        "assets/icons/headlight.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 80, width: 75),
                const Positioned(
                  bottom: 11,
                  left: 19,
                  child: Text(
                    "Far",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 14,
                      fontFamily: "Larsseit",
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              kornacal();
            },
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: AvatarGlow(
                    endRadius: 30,
                    animate: korna,
                    duration: const Duration(milliseconds: 2000),
                    glowColor: const Color.fromARGB(255, 51, 107, 252),
                    repeat: true,
                    repeatPauseDuration: const Duration(milliseconds: 100),
                    showTwoGlows: true,
                    child: CircleAvatar(
                      backgroundColor: kBackgroundColor,
                      child: Image.asset(
                        "assets/icons/horn.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 80, width: 75),
                const Positioned(
                  bottom: 11,
                  left: 12,
                  child: Text(
                    "Korna",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 14,
                      fontFamily: "Larsseit",
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              camAralama();
            },
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: AvatarGlow(
                    endRadius: 30,
                    animate: camArala,
                    duration: const Duration(milliseconds: 2000),
                    glowColor: const Color.fromARGB(255, 51, 107, 252),
                    repeat: true,
                    repeatPauseDuration: const Duration(milliseconds: 100),
                    showTwoGlows: true,
                    child: CircleAvatar(
                      backgroundColor: cam == false
                          ? kBackgroundColor
                          : const Color.fromARGB(255, 51, 107, 252),
                      child: Image.asset(
                        "assets/icons/window.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 80, width: 75),
                const Positioned(
                  bottom: 11,
                  child: Text(
                    "Cam Arala",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 14,
                      fontFamily: "Larsseit",
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              calistirma();
            },
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: AvatarGlow(
                    endRadius: 30,
                    animate: calistiryukle,
                    duration: const Duration(milliseconds: 2000),
                    glowColor: const Color.fromARGB(255, 51, 107, 252),
                    repeat: true,
                    repeatPauseDuration: const Duration(milliseconds: 100),
                    showTwoGlows: true,
                    child: CircleAvatar(
                      backgroundColor: calistir == false
                          ? kBackgroundColor
                          : const Color.fromARGB(255, 51, 107, 252),
                      child: Image.asset(
                        "assets/icons/car-key.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 80, width: 75),
                const Positioned(
                  bottom: 11,
                  left: 8,
                  child: Text(
                    "Çalıştır",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 14,
                      fontFamily: "Larsseit",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  kornacal() async {
    korna = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 4));
    korna = false;
    setState(() {});
  }

  faryak() async {
    if (far == false) {
      faryukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      far = true;
      faryukle = false;
      setState(() {});
    } else {
      faryukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      far = false;
      faryukle = false;
      setState(() {});
    }
  }

  camAralama() async {
    if (cam == false) {
      camArala = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      cam = true;
      camArala = false;
      setState(() {});
    } else {
      camArala = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      cam = false;
      camArala = false;
      setState(() {});
    }
  }

  calistirma() async {
    if (calistir == false) {
      calistiryukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      calistir = true;
      calistiryukle = false;
      setState(() {});
    } else {
      calistiryukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      calistir = false;
      calistiryukle = false;
      setState(() {});
    }
  }

  kaputYukleme() async {
    if (kaput == false) {
      kaputyukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      kaput = true;
      kaputyukle = false;
      setState(() {});
    } else {
      kaputyukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      kaput = false;
      kaputyukle = false;
      setState(() {});
    }
  }

  bagajYukleme() async {
    if (bagaj == false) {
      bagajyukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      bagaj = true;
      bagajyukle = false;
      setState(() {});
    } else {
      bagajyukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      bagaj = false;
      bagajyukle = false;
      setState(() {});
    }
  }

  kilitYukleme() async {
    if (kilit == false) {
      kilityukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      kilit = true;
      kilityukle = false;
      setState(() {});
    } else {
      kilityukle = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      kilit = false;
      kilityukle = false;
      setState(() {});
    }
  }
}
