import 'package:flutter/material.dart';
import 'package:gros_app/core/utils/colors.dart';

class Text_Style {
  static TextStyle tstyle({Color? color, double? fontsize,FontWeight? font}) {
    return TextStyle(
      color: color ?? appcolor.darkcolor,
      fontSize: fontsize ?? 24,
      fontWeight:font?? FontWeight.w600,
    );
  }
}
