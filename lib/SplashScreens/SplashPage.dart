import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gomechanic/SplashScreens/LoginPage.dart';
class SpalshScreen extends StatefulWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen>
{
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Stack(
        children:[ Column(
          children: [
            Image.network("https://cdn.dribbble.com/users/207059/screenshots/"
                "16573461/media/f154d82ff06254c9d49bd8ddda1db06f.gif",height: 400,width: Get.width,),
          ],
        ),]
      ),
      backgroundColor: Colors.white,
      nextScreen: LoginPage(),
      splashIconSize: 450.h,
    );
  }
}