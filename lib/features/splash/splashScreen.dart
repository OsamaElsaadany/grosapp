import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gros_app/core/constants/assetsimages.dart';
import 'package:gros_app/core/functions/navigation.dart';
import 'package:gros_app/core/utils/colors.dart';
import 'package:gros_app/features/auth/pages/login.dart';
import 'package:gros_app/features/home/homeScreen.dart';
import 'package:gros_app/features/main/mainapp_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      pushrepla(context,MainappScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.primarycolor,
      body: Center(child: SvgPicture.asset(images.logoSvg, width: 267.5)),
    );
  }
}
