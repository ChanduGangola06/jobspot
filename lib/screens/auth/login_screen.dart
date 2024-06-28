import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobspot/components/colors/my_colors.dart';
import 'package:jobspot/components/textfield/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
            SizedBox(height: 30.h),
            Text('Email'),
            CustomTextfield(
              controller: emailController,
              style: TextStyle(),
              hintText: 'Enter Email',
              labelText: 'Enter Email',
              hintStyle: TextStyle(),
              labelStyle: TextStyle(),
              fillColor: Colors.white,
              readonly: false,
            ),
            Text('Password'),
            CustomTextfield(
              controller: passwordController,
              style: TextStyle(),
              hintText: 'Enter Password',
              labelText: 'Enter Password',
              hintStyle: TextStyle(),
              labelStyle: TextStyle(),
              fillColor: Colors.white,
              readonly: false,
            ),
          ],
        ),
      ),
    );
  }
}
