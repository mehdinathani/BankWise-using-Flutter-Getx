import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bankwise/screens/convertor/converter_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Bank Wise Exchange Rate Calculator",
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: Image.asset(
            "assets/images/bankwiselogo.png",
            width: MediaQuery.of(context).size.width - 200,
            height: MediaQuery.of(context).size.width - 200,
          ),
          nextScreen: CurrencyConvertorView(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white),
      // CurrencyConvertorView(),
      themeMode: ThemeMode.dark,
    );
  }
}
