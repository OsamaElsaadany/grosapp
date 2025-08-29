import 'package:flutter/material.dart';
import 'package:gros_app/core/functions/navigation.dart';
import 'package:gros_app/core/utils/colors.dart';
import 'package:gros_app/features/details/pages/detailspro.dart';
import 'package:gros_app/features/home/homeScreen.dart';

class imagecont extends StatelessWidget {
  const imagecont({
    super.key,
    required this.widget,
  });

  final detailspro widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: double.infinity,
      decoration: BoxDecoration(
        color: appcolor.textback,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    pop(context, Homescreen());
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.share)),
              ],
            ),
          ),
          Image.asset(
            widget.product.image,
            width: 330,
            height: 200,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
