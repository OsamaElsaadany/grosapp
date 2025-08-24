import 'package:flutter/material.dart';

pushto(BuildContext context,Widget screen){
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}

pushrepla(BuildContext context,Widget screen){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => screen));
}