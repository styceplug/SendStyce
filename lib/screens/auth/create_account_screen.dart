import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';
import '../../utils/app_constants.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/snackbars.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool isPasswordVisible = false;
  bool termsPolicy = false;
  Timer? debounceTimer;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void togglePass() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  void toggleTerms() {
    setState(() {
      termsPolicy = !termsPolicy;
    });
  }

  void storeBody() async {
    final name = nameController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text;

    FocusScope.of(context).unfocus();

    if (name.isEmpty || email.isEmpty || password.isEmpty) {
      CustomSnackBar.failure(message: 'Please fill all required fields');
      return;
    }

    if (termsPolicy == false) {
      CustomSnackBar.failure(message: 'Please accept Terms & Privacy Policy');
      return;
    }

    final passwordValid = _validatePassword(password);
    if (!passwordValid) {
      CustomSnackBar.failure(
        message:
            'Password must be at least 8 chars, include 1 uppercase and 1 symbol',
      );
      return;
    }

    try {} catch (e, s) {
      if (kDebugMode) {
        print(
          'Failed to save data locally. Try again. ${e.toString()}, ${s.toString()}',
        );
      }
    }
  }

  bool _validatePassword(String password) {
    final hasMinLength = password.length >= 8;
    final hasUpper = password.contains(RegExp(r'[A-Z]'));
    final hasSymbol = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    return hasMinLength && hasUpper && hasSymbol;
  }

  @override
  void dispose() {
    debounceTimer?.cancel();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        top: false,
        child: Column(
          children: [
            SizedBox(height: Dimensions.height100 * 0.8),
            Container(
              height: Dimensions.screenHeight / 5,
              width: Dimensions.screenWidth,
              padding: EdgeInsets.symmetric(vertical: Dimensions.height20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // border: Border.all(color: AppColors.gold),
              ),
              child: Image.asset(AppConstants.getPngAsset('courier-3')),
            ),
            SizedBox(height: Dimensions.height20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width20,
                vertical: Dimensions.height20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextField(
                    hintText: 'Name',
                    controller: nameController,
                    labelText: 'Name',
                    autofillHints: [
                      AutofillHints.email,
                      AutofillHints.username,
                    ],
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: Dimensions.height20),
                  CustomTextField(
                    hintText: 'Email or Username',
                    controller: emailController,
                    labelText: 'Email or Username',
                    autofillHints: [
                      AutofillHints.email,
                      AutofillHints.username,
                    ],
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: Dimensions.height20),
                  CustomTextField(
                    hintText: 'Password',
                    obscureText: !isPasswordVisible,
                    labelText: 'Password',
                    maxLines: 1,
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    autofillHints: [AutofillHints.password],
                    suffixIcon: InkWell(
                      onTap: () {
                        togglePass();
                      },
                      child: isPasswordVisible
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                  ),
                  SizedBox(height: Dimensions.height30),
                  CustomButton(
                    text: 'CREATE ACCOUNT',
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      // login();
                      Get.toNamed(AppRoutes.verifyProfileScreen);
                    },
                  ),
                  SizedBox(height: Dimensions.height30),
                  Text('Or Continue with'),
                  SizedBox(height: Dimensions.height30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.width30,
                          vertical: Dimensions.height15,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.grey2),
                          borderRadius: BorderRadius.circular(
                            Dimensions.radius10,
                          ),
                        ),
                        child: Image.asset(
                          AppConstants.getPngAsset('apple-logo'),
                          height: Dimensions.height30,
                          width: Dimensions.width30,
                          color: context.iconColor,
                        ),
                      ),
                      SizedBox(width: Dimensions.width20),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.width30,
                          vertical: Dimensions.height15,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.grey2),
                          borderRadius: BorderRadius.circular(
                            Dimensions.radius10,
                          ),
                        ),
                        child: Image.asset(
                          AppConstants.getPngAsset('google'),
                          height: Dimensions.height30,
                          width: Dimensions.width30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Dimensions.height100),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.loginScreen);
                    },
                    child: Text('Already have an Account? Login'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
