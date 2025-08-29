import 'package:flutter/material.dart';
import 'package:gros_app/core/utils/colors.dart';
import 'package:gros_app/features/splash/splashScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: appcolor.whitecolor,
        appBarTheme: AppBarTheme(
          backgroundColor: appcolor.whitecolor,
          surfaceTintColor: Colors.transparent,
        ),
      ),
      home: Splashscreen(),
    );
  }
}
