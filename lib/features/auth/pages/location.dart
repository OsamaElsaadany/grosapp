import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gros_app/core/constants/assetsimages.dart';
import 'package:gros_app/core/functions/navigation.dart';
import 'package:gros_app/core/utils/colors.dart';
import 'package:gros_app/core/wedgits/btn.dart';
import 'package:gros_app/features/auth/pages/login.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.whitecolor,
      appBar: AppBar(
        backgroundColor: appcolor.whitecolor,
        leading: IconButton(
          onPressed: () {
            
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SvgPicture.asset(images.locationSvg, width: 225),
              SizedBox(height: 40),
              Text(
                'Select Your Location',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              Text(
                'Swithch on your location to stay in tune with what’s happening in your area',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: appcolor.graycolor,
                ),
              ),
              SizedBox(height: 60),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Address',
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: appcolor.graycolor,
                  ),
                ),
              ),
              SizedBox(height: 48),
              btn(
                h: 60,
                title: 'Submit',
                ontap: () {
                  pushto(context, Login());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
