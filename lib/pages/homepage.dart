import 'package:electrical_car_app/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation rotate;
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(microseconds: 1000000));
    _controller.repeat();
    super.initState();
  }

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
            "Tesla Mobile",
            style: TextStyle(
              color: kTextColor,
              fontSize: 25,
              fontFamily: "Larsseit",
            ),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: kTextColor),
        ),
        // drawer: Drawer(),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Araç Durumu: ',
                  style: TextStyle(
                      fontSize: 20, color: kTextColor, fontFamily: "Larsseit"),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Seyir Halinde',
                        style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontFamily: "Comfortaa")),
                  ],
                ),
              ),
              RichText(
                text: const TextSpan(
                  text: 'Anlık Hız: ',
                  style: TextStyle(
                    fontSize: 20,
                    color: kTextColor,
                    fontFamily: "Larsseit",
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: '58 km/h',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Larsseit",
                        )),
                  ],
                ),
              ),
              RichText(
                text: const TextSpan(
                  text: 'Şarj Durumu: ',
                  style: TextStyle(
                    fontSize: 20,
                    color: kTextColor,
                    fontFamily: "Larsseit",
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: '%72',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Larsseit",
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: kDefaultPadding * 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width > 360 ? (size.width - 360) / 2 : 0),
                child: Stack(children: [
                  SizedBox(
                    height: 100,
                    width: 360,
                    child: Image.asset(
                      "assets/car4.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 136,
                    width: 360,
                  ),
                  Positioned(
                    bottom: 8,
                    left: 38.8,
                    child: RotationTransition(
                      turns: Tween(begin: 1.0, end: 0.0).animate(_controller),
                      child: SizedBox(
                          width: 66,
                          height: 66,
                          child: Image.asset("assets/teker.png")),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 38,
                    child: RotationTransition(
                      turns: Tween(begin: 1.0, end: 0.0).animate(_controller),
                      child: SizedBox(
                          width: 66,
                          height: 66,
                          child: Image.asset("assets/teker.png")),
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: kDefaultPadding * 2,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
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
                        ),
                        const SizedBox(
                          width: kDefaultPadding,
                        ),
                        Column(
                          children: [
                            Container(
                              width: (size.width - (3 * kDefaultPadding)) / 2,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: kPrimaryColor),
                            ),
                            const SizedBox(
                              height: kDefaultPadding / 2,
                            ),
                            Container(
                              width: (size.width - (3 * kDefaultPadding)) / 2,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: kPrimaryColor),
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
                            top: 25,
                            left: 15,
                            child: Text(
                              "Tesla'm Nerede?",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: kTextColor2,
                                  fontFamily: "Larsseit",
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                              left: (size.width - (2 * kDefaultPadding)) - 85,
                              bottom: 45,
                              child: SizedBox(
                                  height: 60,
                                  child: Image.asset("assets/konum.png"))),
                          Positioned(
                              right: 15,
                              bottom: 15,
                              child: SizedBox(
                                  height: 60,
                                  child: Image.asset("assets/tesla.png"))),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
