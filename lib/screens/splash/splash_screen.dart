import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/routes.dart';
import '../../utils/app_constants.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/custom_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        bottom: false,
        top: false,
        child: Container(
          height: Dimensions.screenHeight,
          width: Dimensions.screenWidth,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                AppConstants.getGifAsset('package'),
                fit: BoxFit.contain,
                height: Dimensions.height20 * 20,
                width: Dimensions.screenWidth,
              ),

              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width30,
                  vertical: Dimensions.height20,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Great Meals Are Just Minutes Away',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: Dimensions.font30*0.95,
                        fontWeight: FontWeight.w600,
                        // fontFamily: 'BebasNeue',
                        height: 1.5,
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(height: Dimensions.height10),
                    Text(
                      'Get your favourite meals delivered in minutes—easy to order, fast to arrive, always fresh.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: Dimensions.font16,
                        fontWeight: FontWeight.w300,
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(height: Dimensions.height30),
                    CustomButton(
                      text: 'GET STARTED',
                      onPressed: () {
                        Get.toNamed(AppRoutes.loginScreen);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimensions.height50*1.5),
            ],
          ),
        ),
      ),
    );
  }
}
