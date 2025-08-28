import 'package:flutter/material.dart';
import 'package:gros_app/core/constants/assetsimages.dart';
import 'package:gros_app/core/utils/colors.dart';
import 'package:gros_app/core/utils/text_Styles.dart';
import 'package:gros_app/features/home/model/productmodel.dart';

class cartsc extends StatefulWidget {
  const cartsc({super.key});

  @override
  State<cartsc> createState() => _cartscState();
}

class _cartscState extends State<cartsc> {
  double calculateTotal() {
    double total = 0;
    for (var product in products) {
      total += product.price * product.quantity;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.whitecolor,
      appBar: AppBar(
        backgroundColor: appcolor.whitecolor,
        title: Center(
          child: Text('My Cart', style: Text_Style.tstyle(fontsize: 20)),
        ),
      ),
      body: Column(
        children: [
          Divider(color: appcolor.bord, thickness: 1),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                final product = products[index];
                return Padding(
                  padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                  child: Container(
                    height: 130,
                    child: Row(
                      children: [
                        Image.asset(
                          product.image,
                          width: 70,
                          height: 70,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(width: 32),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    product.name,
                                    style: Text_Style.tstyle(
                                      fontsize: 20,
                                      font: FontWeight.w400,
                                      color: appcolor.darkdeep,
                                    ),
                                  ),
                                  Icon(Icons.cancel_rounded),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                '${product.weight}Kg, Price',
                                style: Text_Style.tstyle(
                                  fontsize: 14,
                                  font: FontWeight.w400,
                                  color: appcolor.graycolor,
                                ),
                              ),
                              SizedBox(height: 22),
                              Row(
                                children: [
                                  IconButton(
                                    style: IconButton.styleFrom(
                                      iconSize: 30,
                                      backgroundColor: appcolor.whitecolor,
                                      foregroundColor: appcolor.graycolor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(17),
                                        side: BorderSide(
                                          color: appcolor.graycolor,
                                          width: 0.5,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (product.quantity > 0) {
                                          product.quantity--;
                                        }
                                      });
                                    },
                                    icon: Icon(Icons.remove),
                                  ),

                                  SizedBox(width: 17),
                                  Text(
                                    product.quantity.toString(),
                                    style: Text_Style.tstyle(fontsize: 16),
                                  ),
                                  SizedBox(width: 17),
                                  IconButton(
                                    style: IconButton.styleFrom(
                                      iconSize: 30,
                                      backgroundColor: appcolor.whitecolor,
                                      foregroundColor: appcolor.primarycolor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(17),
                                        side: BorderSide(
                                          color: appcolor.graycolor,
                                          width: 0.5,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        product.quantity++;
                                      });
                                    },
                                    icon: Icon(Icons.add),
                                  ),

                                  Spacer(),
                                  Text(
                                    '\$${product.price * product.quantity}',
                                    style: Text_Style.tstyle(
                                      color: appcolor.darkdeep,
                                      fontsize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: appcolor.bord,
                  thickness: 1,
                  indent: 25.0,
                  endIndent: 25.0,
                );
              },
              itemCount: products.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: appcolor.primarycolor,
            padding: EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            // action checkout
          },
          child: Text(
            "Go to Checkout       ${calculateTotal()} ",
            style: Text_Style.tstyle(fontsize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
