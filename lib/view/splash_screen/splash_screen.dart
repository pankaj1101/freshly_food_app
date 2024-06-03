import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freshly_food_app/core/utils/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(seconds: 2), () {
  //     Navigator.push(context, MaterialPageRoute(builder: (_) {
  //       return const OnBoardingScreen();
  //     }));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 20,
            child: Image.asset(
              AppImages.splashImage1,
              height: 370.r,
            ),
          ),
          Center(
            child: SvgPicture.asset(
              AppImages.appLogo,
              width: 175.r,
              height: 42,
            ),
          ),
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
