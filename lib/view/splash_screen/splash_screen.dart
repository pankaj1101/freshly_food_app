import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freshly_food_app/core/definations/routes_name.dart';
import 'package:freshly_food_app/core/utils/app_images.dart';
import 'package:freshly_food_app/view/onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Timer to auto navigate to next onBoarding Screen
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        RoutesName.onBoardingScreen,
        (route) => false,
        
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //  top image
          Positioned(
            top: 20,
            child: Image.asset(
              AppImages.splashImage1,
              height: 370.r,
            ),
          ),

          // center logo
          Center(
            child: SvgPicture.asset(
              AppImages.appLogo,
              width: 175.r,
              height: 42.r,
            ),
          ),

          // Bottom image
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              AppImages.splashImage2,
              height: 290.r,
            ),
          ),
        ],
      ),
    );
  }
}
