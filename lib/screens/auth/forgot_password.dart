import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:send_styce/widgets/custom_appbar.dart';

import '../../routes/routes.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/snackbars.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  // AuthController authController = Get.find<AuthController>();
  TextEditingController mailController = TextEditingController();

  void requestLink() {
    if (mailController.text.isEmpty) {
      CustomSnackBar.failure(message: 'Please enter your email address');
      return;
    }
    final mail = mailController.text.trim();
    // authController.initiatePasswordReset(mail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        leadingIcon: Container(
          height: Dimensions.height10,
          width: Dimensions.width10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.grey4),
          ),
          child: BackButton(),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: Dimensions.height20),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width20,
              vertical: Dimensions.height20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: Dimensions.font30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: Dimensions.height50),
                Text('Email Address'),
                CustomTextField(
                  hintText: 'Input Email Address',
                  controller: mailController,
                  labelText: 'Email Address',
                  autofillHints: [AutofillHints.email],
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: Dimensions.height20),

                CustomButton(
                  text: 'REQUEST RESET LINK',
                  onPressed: () {
                    requestLink();
                  },
                ),
                SizedBox(height: Dimensions.height20),
                Text(
                  'If there is an existing record attached to provided mail, a password reset link will be sent to your email',
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: AppColors.grey5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
