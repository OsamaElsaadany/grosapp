import 'package:flutter/material.dart';
import 'package:gros_app/core/utils/colors.dart';
import 'package:gros_app/features/cart/pages/cart.dart';
import 'package:gros_app/features/home/homeScreen.dart';

class MainappScreen extends StatefulWidget {
  const MainappScreen({super.key});

  @override
  State<MainappScreen> createState() => _MainappScreenState();
}

class _MainappScreenState extends State<MainappScreen> {
  List<Widget> screens = [Homescreen(),cartsc()];

  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: appcolor.whitecolor,
            boxShadow: [
              BoxShadow(
                color: appcolor.graycolor.withValues(alpha: .2),
                blurRadius: 10,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: BottomNavigationBar(
            currentIndex: currentindex,
            onTap: (index) {
              setState(() {
                currentindex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: appcolor.primarycolor,
            unselectedItemColor: appcolor.darkcolor,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined),
                label: 'shop',
              ),
              
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_sharp),
                label: 'search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_sharp),
                label: 'favourite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
