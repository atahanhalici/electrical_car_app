import 'package:electrical_car_app/constants.dart';
import 'package:electrical_car_app/widgets/addcreditcard.dart';
import 'package:electrical_car_app/widgets/bottomnavi.dart';
import 'package:flutter/material.dart';

class AddCardPage extends StatelessWidget {
  final String numara;
  final String tarih;
  final String isim;
  final String cvv;
  const AddCardPage({Key? key, required this.numara, required this.tarih, required this.isim, required this.cvv}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Kart Ekle",
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
                              AddCard(
                                cvv: cvv,
                                isim: isim,
                                numara: numara,
                                tarih: tarih,
                              )
                            ]))))));
  }
}
