import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobspot/components/colors/my_colors.dart';
import 'package:jobspot/screens/auth/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 100.h, bottom: 30.h),
              child: SvgPicture.asset('assets/icons/onboard.svg'),
            ),
            Text(
              'Find Your',
              style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              'Dream Job',
              style: TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
                color: MyColors.cardColor,
                decoration: TextDecoration.underline,
                decorationColor: MyColors.cardColor,
              ),
            ),
            Text(
              'Here!',
              style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),
            const Text(
              'Explore all the most exciting job roles basedon your interest and study major.',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF524B6B),
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const LoginScreen());
                  },
                  child: CircleAvatar(
                    backgroundColor: MyColors.primaryColor,
                    radius: 30.r,
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 28.sp,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
