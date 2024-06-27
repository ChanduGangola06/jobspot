import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobspot/components/colors/my_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Text(
              'Welcome Back',
              style: TextStyle(
                  fontSize: 30.sp,
                  color: MyColors.textPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.h),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
              style: TextStyle(
                fontSize: 12.sp,
                color: const Color(0xFF524B6B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
