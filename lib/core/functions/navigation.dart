import 'package:flutter/material.dart';

pushto(BuildContext context,Widget screen){
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}

pushrepla(BuildContext context,Widget screen){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => screen));
}

pushAndRemove(BuildContext context, Widget screen) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => screen),
    (route) => false,
  );
}

pop(BuildContext context,Widget screen){
  Navigator.pop(context, MaterialPageRoute(builder: (context) => screen));
}