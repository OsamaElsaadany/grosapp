import 'package:flutter/material.dart';
import 'package:gros_app/core/functions/navigation.dart';
import 'package:gros_app/core/utils/colors.dart';
import 'package:gros_app/core/utils/text_Styles.dart';
import 'package:gros_app/features/details/pages/detailspro.dart';
import 'package:gros_app/features/home/model/productmodel.dart';

class procart extends StatelessWidget {
  const procart({super.key, required this.product});

  final Productmodel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushto(context, detailspro(product: this.product,));
      },
      child: Container(
        width: 170,
        decoration: BoxDecoration(
          border: Border.all(color: appcolor.bord),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset(product.image)],
                ),
              ),
              SizedBox(height: 25),
              Text(product.name, style: Text_Style.tstyle(fontsize: 17)),
              SizedBox(height: 5),
              Text(
                '${product.weight}pcs',
                style: Text_Style.tstyle(
                  color: appcolor.graycolor,
                  fontsize: 14,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: Text_Style.tstyle(fontsize: 18),
                  ),
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add, size: 25),
                      style: IconButton.styleFrom(
                        foregroundColor: appcolor.whitecolor,
                        backgroundColor: appcolor.primarycolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
