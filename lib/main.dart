import 'package:flutter/material.dart';
import 'presentation/view/splash_screen/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily:"Lato",
        scaffoldBackgroundColor:const Color(0xffFCFDFD),
        useMaterial3: true,
      ),
      home: const SplashView(),

    );
  }
}

