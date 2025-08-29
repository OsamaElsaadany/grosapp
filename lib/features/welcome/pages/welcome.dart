import 'package:flutter/material.dart';
import 'package:gros_app/core/constants/assetsimages.dart';
import 'package:gros_app/core/functions/navigation.dart';
import 'package:gros_app/core/utils/colors.dart';
import 'package:gros_app/core/utils/text_Styles.dart';
import 'package:gros_app/core/wedgits/btn.dart';
import 'package:gros_app/features/auth/pages/login.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            images.background,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          Positioned(
            bottom: 50,
            left: 30,
            right: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  images.carrot,
                  color: appcolor.whitecolor,
                  colorBlendMode: BlendMode.srcIn,
                ),
                SizedBox(height: 10),
                Text(
                  'Welcome \nto our store',
                  textAlign: TextAlign.center,
                  style: Text_Style.tstyle(
                    color: appcolor.whitecolor,
                    fontsize: 48,
                  ),
                ),
                SizedBox(height: 19),
                Text(
                  'Ger your groceries in as fast as one hour',
                  style: Text_Style.tstyle(
                    color: appcolor.txt.withValues(alpha: .7),
                    fontsize: 16,
                    font: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 40),
                btn(
                  h: 67,
                  title: 'Get Started',
                  ontap: () {
                    pushAndRemove(context, Login());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
