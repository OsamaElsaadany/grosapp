import 'package:flutter/material.dart';
import 'package:gros_app/core/constants/assetsimages.dart';
import 'package:gros_app/core/utils/colors.dart';
import 'package:gros_app/core/wedgits/btn.dart';
import 'package:gros_app/core/wedgits/custom.dart';
import 'package:gros_app/core/wedgits/custompass.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.whitecolor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset(images.carrot)],
                ),
                SizedBox(height: 75.95),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: appcolor.darkcolor,
                  ),
                ),
                SizedBox(height: 16.5),
                Text(
                  'Enter your credentials to continue',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: appcolor.graycolor,
                  ),
                ),
                SizedBox(height: 40),
                tforwedg(label: 'Username'),
                SizedBox(height: 30),
                tforwedg(label: 'Email'),
                SizedBox(height: 30),
                passforwid(label: 'Password'),
                SizedBox(height: 35),
                btn(h: 67, title: 'Login', ontap: () {}),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account? ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: appcolor.darkcolor,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Singup',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: appcolor.primarycolor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
