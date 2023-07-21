import 'package:electrical_car_app/pages/homepage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    yonlendir();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 30, 60),
      body: Center(
        child: Image.asset("assets/tesla_logo_gif.gif"),
      ),
    );
  }

  yonlendir() async {
    await Future.delayed(const Duration(seconds: 6));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }
}
