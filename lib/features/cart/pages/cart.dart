import 'package:flutter/material.dart';
import 'package:gros_app/core/constants/assetsimages.dart';
import 'package:gros_app/core/functions/navigation.dart';
import 'package:gros_app/core/utils/colors.dart';
import 'package:gros_app/core/utils/text_Styles.dart';
import 'package:gros_app/core/wedgits/btn.dart';
import 'package:gros_app/features/accepted/accepted.dart';
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
        padding: EdgeInsets.fromLTRB(16, 2, 16, 10),
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
            modsheet(context);
          },
          child: Text(
            "Go to Checkout       ${calculateTotal()} ",
            style: Text_Style.tstyle(fontsize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Future<dynamic> modsheet(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            color: appcolor.textback,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 30, 25, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Checkout',
                        style: Text_Style.tstyle(color: appcolor.darkdeep),
                      ),
                      Icon(Icons.cancel_rounded),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Divider(color: appcolor.bord),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery',
                            style: Text_Style.tstyle(
                              fontsize: 18,
                              color: appcolor.graycolor,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Select Method',
                                style: Text_Style.tstyle(
                                  fontsize: 18,
                                  color: appcolor.darkdeep,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ],
                      ),
                      Divider(color: appcolor.bord),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pament',
                            style: Text_Style.tstyle(
                              fontsize: 18,
                              color: appcolor.graycolor,
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(images.pay),
                              SizedBox(width: 10),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ],
                      ),
                      Divider(color: appcolor.bord),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Promo Code',
                            style: Text_Style.tstyle(
                              fontsize: 18,
                              color: appcolor.graycolor,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Pick discount',
                                style: Text_Style.tstyle(
                                  fontsize: 18,
                                  color: appcolor.darkdeep,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ],
                      ),
                      Divider(color: appcolor.bord),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Cost',
                            style: Text_Style.tstyle(
                              fontsize: 18,
                              color: appcolor.graycolor,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '\$${calculateTotal()}',
                                style: Text_Style.tstyle(
                                  fontsize: 18,
                                  color: appcolor.darkdeep,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ],
                      ),
                      Divider(color: appcolor.bord),
                      SizedBox(height: 20),
                      Text(
                        'By placing an order you agree to ourTerms And Conditions',
                        style: Text_Style.tstyle(
                          color: appcolor.darkdeep,
                          fontsize: 14,
                        ),
                      ),
                      SizedBox(height: 25),
                      btn(
                        h: 67,
                        title: 'Place Order',
                        ontap: () {
                          pushAndRemove(context, Accepted());
                        },
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
