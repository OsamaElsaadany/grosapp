import 'package:flutter/material.dart';
import 'package:gros_app/core/utils/colors.dart';

class btn extends StatelessWidget {
  const btn({super.key, required this.h, required this.title, required this.ontap});

  final double h;
  final String title;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: h,

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: appcolor.whitecolor,
          backgroundColor: appcolor.primarycolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: ontap,
        child: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
