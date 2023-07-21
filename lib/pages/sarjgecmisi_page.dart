import 'package:electrical_car_app/constants.dart';
import 'package:electrical_car_app/widgets/bottomnavi.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SarjGecmisi extends StatelessWidget {
  const SarjGecmisi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Text text = const Text("");
    return Scaffold(
        backgroundColor: kBackgroundColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Şarj Geçmişi",
            style: TextStyle(
              color: kTextColor,
              fontSize: 20,
              fontFamily: "Larsseit",
            ),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: kTextColor),
        ),
        bottomNavigationBar: const BottomNavi(currentindex: 2),
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
                          const SizedBox(
                            height: kDefaultPadding * 2,
                          ),
                          Image.asset(
                            "assets/teslasarj2.png",
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(
                            height: kDefaultPadding * 2,
                          ),
                          Container(
                              padding: const EdgeInsets.all(kDefaultPadding),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: kPrimaryColor),
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        "Özet Kullanım",
                                        style: TextStyle(
                                          color: kTextColor,
                                          fontSize: 25,
                                          fontFamily: "Larsseit",
                                        ),
                                      ),
                                      Expanded(child: SizedBox()),
                                      Text(
                                        "134.46 kW",
                                        style: TextStyle(
                                          color: kTextColor2,
                                          fontSize: 25,
                                          fontFamily: "Larsseit",
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: kDefaultPadding,
                                  ),
                                  SizedBox(
                                      height: 150,
                                      child: BarChart(BarChartData(
                                          maxY: 100,
                                          minY: 0,
                                          gridData: FlGridData(show: false),
                                          borderData: FlBorderData(show: false),
                                          titlesData: FlTitlesData(
                                              show: true,
                                              topTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                      showTitles: false)),
                                              bottomTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                      showTitles: false)),
                                              rightTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                      showTitles: false)),
                                              leftTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                      showTitles: true,
                                                      getTitlesWidget:
                                                          (value, meta) {
                                                        var style =
                                                            const TextStyle(
                                                                color:
                                                                    kTextColor,
                                                                fontSize: 15);
                                                        switch (value.toInt()) {
                                                          case 0:
                                                            text = Text(
                                                              "0",
                                                              style: style,
                                                            );
                                                            break;
                                                          case 50:
                                                            text = Text(
                                                              "50",
                                                              style: style,
                                                            );
                                                            break;
                                                          case 100:
                                                            text = Text(
                                                              "100",
                                                              style: style,
                                                            );
                                                            break;
                                                        }
                                                        return SideTitleWidget(
                                                            axisSide:
                                                                meta.axisSide,
                                                            child: text);
                                                      },
                                                      reservedSize: 34))),
                                          barGroups: [
                                            BarChartGroupData(x: 0, barRods: [
                                              BarChartRodData(
                                                  toY: 60,
                                                  width: 30,
                                                  borderRadius:
                                                      BorderRadius.circular(10))
                                            ]),
                                            BarChartGroupData(x: 1, barRods: [
                                              BarChartRodData(
                                                  toY: 80,
                                                  width: 30,
                                                  borderRadius:
                                                      BorderRadius.circular(10))
                                            ]),
                                            BarChartGroupData(x: 2, barRods: [
                                              BarChartRodData(
                                                  toY: 20,
                                                  width: 30,
                                                  borderRadius:
                                                      BorderRadius.circular(10))
                                            ]),
                                            BarChartGroupData(x: 3, barRods: [
                                              BarChartRodData(
                                                  toY: 30,
                                                  width: 30,
                                                  borderRadius:
                                                      BorderRadius.circular(10))
                                            ]),
                                            BarChartGroupData(x: 4, barRods: [
                                              BarChartRodData(
                                                  toY: 70,
                                                  width: 30,
                                                  borderRadius:
                                                      BorderRadius.circular(10))
                                            ]),
                                            BarChartGroupData(x: 5, barRods: [
                                              BarChartRodData(
                                                  toY: 90,
                                                  width: 30,
                                                  borderRadius:
                                                      BorderRadius.circular(10))
                                            ]),
                                            BarChartGroupData(x: 6, barRods: [
                                              BarChartRodData(
                                                  toY: 50,
                                                  width: 30,
                                                  borderRadius:
                                                      BorderRadius.circular(10))
                                            ]),
                                          ]))),
                                ],
                              )),
                          const SizedBox(
                            height: kDefaultPadding,
                          ),
                          Container(
                              padding: const EdgeInsets.all(kDefaultPadding),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: kPrimaryColor),
                              child: Column(children: [
                                Row(
                                  children: const [
                                    Text(
                                      "Şarj Geçmişi",
                                      style: TextStyle(
                                        color: kTextColor,
                                        fontSize: 25,
                                        fontFamily: "Larsseit",
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: kDefaultPadding,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: kDefaultPadding * 2.5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "Tarih",
                                        style: TextStyle(
                                          color: kTextColor2,
                                          fontSize: 15,
                                          fontFamily: "Larsseit",
                                        ),
                                      ),
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        "Zaman",
                                        style: TextStyle(
                                          color: kTextColor2,
                                          fontSize: 15,
                                          fontFamily: "Larsseit",
                                        ),
                                      ),
                                      Text(
                                        "Enerji Kullanımı",
                                        style: TextStyle(
                                          color: kTextColor2,
                                          fontSize: 15,
                                          fontFamily: "Larsseit",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: kDefaultPadding,
                                ),
                                gecmis("1 Temmuz 2023", "120 dk", "36.6 kWh"),
                                gecmis("2 Temmuz 2023", "70 dk", "25,4 kWh"),
                                gecmis("4 Temmuz 2023", "180 dk", "46.8 kWh")
                              ])),
                          const SizedBox(
                            height: kDefaultPadding,
                          ),
                        ])))));
  }

  Widget gecmis(String tarih, String dk, String tasarruf) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tarih,
              style: const TextStyle(
                color: kTextColor,
                fontSize: 15,
                fontFamily: "Larsseit",
              ),
            ),
            Text(
              dk,
              style: const TextStyle(
                color: kTextColor,
                fontSize: 15,
                fontFamily: "Larsseit",
              ),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/icons/simsek.png",
                  height: 25,
                  width: 25,
                ),
                Text(
                  tasarruf,
                  style: const TextStyle(
                    color: kTextColor,
                    fontSize: 15,
                    fontFamily: "Larsseit",
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: kTextColor,
            )
          ],
        ),
        const SizedBox(
          height: kDefaultPadding / 2,
        ),
        const SizedBox(
          child: Divider(
            color: kTextColor,
            thickness: 1,
          ),
        ),
        const SizedBox(
          height: kDefaultPadding / 2,
        ),
      ],
    );
  }
}
