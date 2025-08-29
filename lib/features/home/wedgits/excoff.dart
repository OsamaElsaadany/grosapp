import 'package:flutter/material.dart';
import 'package:gros_app/core/utils/colors.dart';
import 'package:gros_app/core/utils/text_Styles.dart';
import 'package:gros_app/features/home/model/productmodel.dart';
import 'package:gros_app/features/home/wedgits/procart.dart';

class Excoff extends StatelessWidget {
  const Excoff({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Exclusive Offer', style: Text_Style.tstyle()),
            Text(
              'see all',
              style: Text_Style.tstyle(
                color: appcolor.primarycolor,
                fontsize: 16,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 240,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final product = products[index];
              return procart(product: product);
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 15);
            },
            itemCount: products.length,
          ),
        ),
      ],
    );
  }
}
