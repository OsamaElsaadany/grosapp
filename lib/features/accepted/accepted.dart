import 'package:flutter/material.dart';
import 'package:gros_app/core/constants/assetsimages.dart';
import 'package:gros_app/core/functions/navigation.dart';
import 'package:gros_app/core/utils/colors.dart';
import 'package:gros_app/core/utils/text_Styles.dart';
import 'package:gros_app/core/wedgits/btn.dart';
import 'package:gros_app/features/main/mainapp_screen.dart';

class Accepted extends StatelessWidget {
  const Accepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(images.success, width: 260, height: 240),
              SizedBox(height: 50),
              Text(
                'Your Order has been \naccepted',
                textAlign: TextAlign.center,
                style: Text_Style.tstyle(fontsize: 28, color: appcolor.darkdeep),
              ),
              SizedBox(height: 10),
              Text(
                'Your items has been placcd and is on \nit’s way to being processed',
                textAlign: TextAlign.center,
                style: Text_Style.tstyle(
                  fontsize: 16,
                  color: appcolor.graycolor,
                  font: FontWeight.w400,
                ),
              ),
              SizedBox(height: 50),
              btn(
                h: 50,
                title: 'Back To Home',
                ontap: () {
                  pushAndRemove(context, MainappScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
