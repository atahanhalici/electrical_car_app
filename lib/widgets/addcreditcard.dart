import 'package:electrical_car_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class AddCard extends StatefulWidget {
  final String numara;
  final String tarih;
  final String isim;
  final String cvv;
  const AddCard({
    Key? key,
    required this.numara,
    required this.tarih,
    required this.isim,
    required this.cvv,
  }) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  String cardNumber = "";
  String expiryDate = "";
  String cardHolderName = "";
  String cvvCode = "";
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final border = OutlineInputBorder(
      borderSide: BorderSide(
    color: Colors.grey.withOpacity(0.7),
    width: 2.0,
  ));
  @override
  void initState() {
    cardNumber = widget.numara;
    expiryDate = widget.tarih;
    cardHolderName = widget.isim;
    cvvCode = widget.cvv;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: isCvvFocused,
          cardBgColor: kPrimaryColor,
          isHolderNameVisible: true,
          obscureCardNumber: true,
          obscureCardCvv: true,
          labelCardHolder: "KART SAHIBI",
          labelValidThru: "SGT",
          onCreditCardWidgetChange:
              // ignore: non_constant_identifier_names
              (CreditCardBrand) {},
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: onCreditCardModelChange,
                themeColor: Colors.blueGrey,
                formKey: formKey,
                textColor: kTextColor,
                cardNumberDecoration: InputDecoration(
                    hintStyle: const TextStyle(color: kTextColor),
                    labelStyle: const TextStyle(color: kTextColor),
                    focusedBorder: border,
                    enabledBorder: border,
                    border: const OutlineInputBorder(),
                    labelText: 'Kart Numarası',
                    hintText: 'xxxx xxxx xxxx xxxx'),
                expiryDateDecoration: InputDecoration(
                    hintStyle: const TextStyle(color: kTextColor),
                    labelStyle: const TextStyle(color: kTextColor),
                    focusedBorder: border,
                    enabledBorder: border,
                    border: const OutlineInputBorder(),
                    labelText: 'Son Geçerlilik Tarihi',
                    hintText: 'xx/xx'),
                cvvCodeDecoration: InputDecoration(
                    hintStyle: const TextStyle(color: kTextColor),
                    labelStyle: const TextStyle(color: kTextColor),
                    focusedBorder: border,
                    enabledBorder: border,
                    border: const OutlineInputBorder(),
                    labelText: 'CVV',
                    hintText: 'xxx'),
                cardHolderDecoration: InputDecoration(
                  hintStyle: const TextStyle(color: kTextColor),
                  labelStyle: const TextStyle(color: kTextColor),
                  focusedBorder: border,
                  enabledBorder: border,
                  border: const OutlineInputBorder(),
                  labelText: 'Kart Sahibi',
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              GestureDetector(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    print('valid');
                  } else {
                    print('inValid');
                  }
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 51, 107, 252)),
                  child: const Center(
                    child: Text(
                      "Onayla",
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
      ],
    );
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
