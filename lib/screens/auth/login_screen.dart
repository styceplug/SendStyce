import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:send_styce/utils/app_constants.dart';

import '../../routes/routes.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/snackbars.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool viewPassword = false;
  bool isRememberMe = false;

  void togglePass() {
    setState(() {
      viewPassword = !viewPassword;
    });
  }

  void toggleRememberMe() {
    setState(() {
      isRememberMe = !isRememberMe;
    });
  }

  // AuthController authController = Get.find<AuthController>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  /*  void login() {
    final input = usernameController.text.trim();
    final password = passwordController.text.trim();

    if (input.isEmpty || password.isEmpty) {
      CustomSnackBar.failure(message: 'Both fields are required');
      return;
    }

    authController.login(input, password, staySignedIn: isRememberMe);
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        top: false,
        child: Column(
          children: [
            SizedBox(height: Dimensions.height100 * 1.4),
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
                    hintText: 'Email or Username',
                    controller: usernameController,
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
                    obscureText: !viewPassword,
                    labelText: 'Password',
                    maxLines: 1,
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    autofillHints: [AutofillHints.password],
                    suffixIcon: InkWell(
                      onTap: () {
                        togglePass();
                      },
                      child: viewPassword
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                  ),
                  SizedBox(height: Dimensions.height30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              toggleRememberMe();
                              print(isRememberMe);
                            },
                            child: !isRememberMe
                                ? Icon(
                                    Icons.check_box_outline_blank,
                                    size: Dimensions.iconSize16,
                                  )
                                : Icon(
                                    Icons.check_box,
                                    size: Dimensions.iconSize16,
                                  ),
                          ),
                          SizedBox(width: Dimensions.width5),
                          Text(
                            'Stay Signed in?',
                            textAlign: TextAlign.right,
                            style: TextStyle(color: AppColors.grey5),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.forgotPasswordScreen);
                        },
                        child: Text(
                          'Forgot Password?',
                          textAlign: TextAlign.right,
                          style: TextStyle(color: AppColors.grey5),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Dimensions.height30),
                  CustomButton(
                    text: 'SIGN IN',
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      // login();
                      Get.toNamed(AppRoutes.homeScreen);
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
                      Get.toNamed(AppRoutes.createAccountScreen);
                    },
                    child: Text('Don\'t have an Account? Register today'),
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
