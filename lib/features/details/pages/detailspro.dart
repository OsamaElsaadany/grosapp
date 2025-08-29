import 'package:flutter/material.dart';
import 'package:gros_app/core/utils/colors.dart';
import 'package:gros_app/core/utils/text_Styles.dart';
import 'package:gros_app/core/wedgits/btn.dart';
import 'package:gros_app/core/wedgits/extile.dart';
import 'package:gros_app/features/details/widgets/imagecont.dart';
import 'package:gros_app/features/home/model/productmodel.dart';

class detailspro extends StatefulWidget {
  const detailspro({super.key, required this.product});

  final Productmodel product;

  @override
  State<detailspro> createState() => _detailsproState();
}

class _detailsproState extends State<detailspro> {
  bool isfav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            imagecont(widget: widget),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Naturel ${widget.product.name}',
                        style: Text_Style.tstyle(font: FontWeight.w400),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isfav = !isfav;
                          });
                        },
                        icon: Icon(
                          isfav
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          color: isfav ? Colors.red : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    '${widget.product.weight}Kg, Price',
                    style: Text_Style.tstyle(
                      fontsize: 14,
                      font: FontWeight.w400,
                      color: appcolor.graycolor,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      IconButton(
                        style: IconButton.styleFrom(
                          iconSize: 30,
                          backgroundColor: appcolor.whitecolor,
                          foregroundColor: appcolor.graycolor,
                        ),
                        onPressed: () {
                          setState(() {
                            if (widget.product.quantity > 0) {
                              widget.product.quantity--;
                            }
                          });
                        },
                        icon: Icon(Icons.remove),
                      ),

                      SizedBox(width: 17),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Center(
                          child: Text(
                            widget.product.quantity.toString(),
                            style: Text_Style.tstyle(fontsize: 16),
                          ),
                        ),
                      ),
                      SizedBox(width: 17),
                      IconButton(
                        style: IconButton.styleFrom(
                          iconSize: 30,
                          backgroundColor: appcolor.whitecolor,
                          foregroundColor: appcolor.primarycolor,
                        ),
                        onPressed: () {
                          setState(() {
                            widget.product.quantity++;
                          });
                        },
                        icon: Icon(Icons.add),
                      ),

                      Spacer(),
                      Text(
                        '\$${widget.product.price * widget.product.quantity}',
                        style: Text_Style.tstyle(
                          color: appcolor.darkdeep,
                          fontsize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Divider(color: appcolor.bordico, thickness: 2),
                  Theme(
                    data: ThemeData().copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      title: Text(
                        'Product Detail',
                        style: Text_Style.tstyle(fontsize: 16),
                      ),
                      children: [
                        Text(
                          '${widget.product.name} are nutritious. ${widget.product.name}s may be good for weight loss.${widget.product.name}s may be good for your heart. As part of a healtful and varied diet.',
                          style: Text_Style.tstyle(
                            fontsize: 13,
                            font: FontWeight.w400,
                            color: appcolor.graycolor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(color: appcolor.bordico, thickness: 2),
                  Theme(
                    data: ThemeData().copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: extile(tit: 'Nutritions',endtit: '100gr',),
                  ),
                  Divider(color: appcolor.bordico, thickness: 2),
                  Theme(
                    data: ThemeData().copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: appcolor.star),
                          Icon(Icons.star, color: appcolor.star),
                          Icon(Icons.star, color: appcolor.star),
                          Icon(Icons.star, color: appcolor.star),
                          Icon(Icons.star, color: appcolor.star),
                          const SizedBox(width: 5),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                      title: Text(
                        'Review',
                        style: Text_Style.tstyle(fontsize: 16),
                      ),
                      children: [Text('---------------')],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 8),
        child: btn(h: 65, title: 'Add To Basket', ontap: () {}),
      ),
    );
  }
}
