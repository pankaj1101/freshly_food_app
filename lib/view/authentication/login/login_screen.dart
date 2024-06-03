import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshly_food_app/core/definations/routes_name.dart';
import 'package:freshly_food_app/core/utils/app_colors.dart';
import 'package:freshly_food_app/core/utils/app_size.dart';
import 'package:freshly_food_app/core/utils/app_string.dart';
import 'package:freshly_food_app/core/utils/app_textstyle.dart';
import 'package:freshly_food_app/core/utils/font_utils.dart';
import 'package:freshly_food_app/view/authentication/login/components/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(390, 844));
    return Scaffold(
      // appbar
      appBar: AppBar(scrolledUnderElevation: 0.0),

      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // top section
              _buildTopHeaderSection(),
              // login form
              const LoginForm(),
              // footer section
              _buildFooterSection(context),
            ],
          ),
        ),
      )),
    );
  }

  _buildFooterSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppString.dontHaveAnAccount,
          style: AppTextStyle.poppinsFonts(
            fontSize: FontSizeUtil.f10,
            fontWeight: FontWeight.normal,
            fontColor: AppColors.textColor,
          ),
        ),
        InkWell(
          onTap: () => Navigator.pushNamed(context, RoutesName.signup),
          child: Text(
            ' ${AppString.signUp}',
            style: AppTextStyle.poppinsFonts(
              fontSize: FontSizeUtil.f10,
              fontWeight: FontWeight.bold,
              fontColor: AppColors.textColor,
            ),
          ),
        ),
      ],
    );
  }

  _buildTopHeaderSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 31.h),
        Text(
          AppString.welcomBack,
          style: AppTextStyle.poppinsFonts(
            fontSize: FontSizeUtil.f20,
            fontWeight: FontWeight.bold,
            fontColor: AppColors.textColor,
          ),
        ),
        Text(
          AppString.itNiceTOHaveYouBack,
          style: AppTextStyle.poppinsFonts(
            fontSize: FontSizeUtil.f10,
            fontWeight: FontWeight.normal,
            fontColor: AppColors.textColor,
          ),
        ),
        SizedBox(height: AppSize.s52.h),
      ],
    );
  }
}
