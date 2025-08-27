import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gros_app/core/constants/assetsimages.dart';
import 'package:gros_app/core/utils/colors.dart';
import 'package:gros_app/core/utils/text_Styles.dart';
import 'package:gros_app/features/home/wedgits/bstsell.dart';
import 'package:gros_app/features/home/wedgits/excoff.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: SvgPicture.asset(
            images.logoSvg,
            height: 50,
            colorFilter: ColorFilter.mode(
              appcolor.primarycolor,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 17, 24, 24),
        child: Column(
          children: [
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded),
                    prefixIconColor: appcolor.darkcolor,
                    labelText: 'Search',
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: appcolor.graycolor,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: appcolor.textback),
                    ),
                    filled: true,
                    fillColor: appcolor.textback,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(3, 24, 0, 30),
                  child: Column(
                    children: [Excoff(), SizedBox(height: 10), Bstsell()],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
