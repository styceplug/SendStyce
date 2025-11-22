import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:send_styce/utils/colors.dart';
import 'package:send_styce/utils/theme_ext.dart';
import 'package:send_styce/widgets/custom_button.dart';
import 'package:send_styce/widgets/otp_box.dart';

import '../../routes/routes.dart';
import '../../utils/app_constants.dart';
import '../../utils/dimensions.dart';

class VerifyProfile extends StatefulWidget {
  VerifyProfile({super.key});

  @override
  State<VerifyProfile> createState() => _VerifyProfileState();
}

void submit() {}

class _VerifyProfileState extends State<VerifyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Container(
          width: Dimensions.screenWidth,
          height: Dimensions.screenHeight,
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
          decoration: BoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: Dimensions.screenHeight / 2.3,
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width50,
                  vertical: Dimensions.height30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white24, width: 2),
                ),
                child: Image.asset(
                  AppConstants.getGifAsset('computer'),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: Dimensions.height30),

              Text(
                "Welcome! Let’s Secure Your Account 🎉",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                  color: AppColors.black
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),

              Text(
                "Check your email for the verification code and enter it below to continue.",
                style: TextStyle(fontSize: 15, height: 1.6,color: AppColors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),

              OtpInput(),

              Spacer(),
              CustomButton(
                text: 'Verify',
                onPressed: () {
                  Get.offAllNamed(AppRoutes.homeScreen);
                },
              ),

              SizedBox(height: Dimensions.height20),
              Text(
                "Didn’t get the email? Check your spam folder or try again.",
                style: TextStyle(fontSize: Dimensions.font13,color: AppColors.black),
                textAlign: TextAlign.center,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
