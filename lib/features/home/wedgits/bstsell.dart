import 'package:flutter/material.dart';
import 'package:gros_app/core/constants/assetsimages.dart';
import 'package:gros_app/core/utils/colors.dart';
import 'package:gros_app/core/utils/text_Styles.dart';
import 'package:gros_app/features/home/model/productmodel.dart';
import 'package:gros_app/features/home/wedgits/procart.dart';

class Bstsell extends StatelessWidget {
  const Bstsell({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Best Selling', style: Text_Style.tstyle()),
            Text(
              'see all',
              style: Text_Style.tstyle(
                color: appcolor.primarycolor,
                fontsize: 16,
              ),
            ),
          ],
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 240,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return procart(product: product);
          },
          itemCount: products.length,
        ),
      ],
    );
  }
}
