import 'package:get/get.dart';
import 'package:send_styce/screens/auth/create_account_screen.dart';
import 'package:send_styce/screens/auth/forgot_password.dart';
import 'package:send_styce/screens/auth/verify_profile.dart';
import 'package:send_styce/screens/home/home_screen.dart';
import 'package:send_styce/screens/in_app/location_screen.dart';
import 'package:send_styce/screens/in_app/new_location.dart';

import '../screens/auth/login_screen.dart';
import '../screens/splash/no_internet_screen.dart';
import '../screens/splash/onboarding_screen.dart';
import '../screens/splash/splash_screen.dart';
import '../screens/splash/update_app_screen.dart';

class AppRoutes {


  //general
  static const String splashScreen = '/splash-screen';
  static const String onboardingScreen = '/onboarding-screen';
  static const String updateAppScreen = '/update-app-screen';
  static const String noInternetScreen = '/no-internet-screen';

  //auth
  static const String loginScreen = '/login-screen';
  static const String createAccountScreen = '/create-account-screen';
  static const String selectCategoryScreen = '/select-category-screen';
  static const String forgotPasswordScreen = '/forgot-password-screen';
  static const String verifyProfileScreen = '/verify-profile-screen';
  static const String editProfileScreen = '/edit-profile-screen';


  //inapp
  static const String homeScreen = '/home-screen';
  static const String locationScreen = '/location-screen';
  static const String newLocationScreen = '/new-location-screen';





  static final routes = [
    //general
    GetPage(
      name: splashScreen,
      page: () {
        return const SplashScreen();
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: onboardingScreen,
      page: () {
        return const OnboardingScreen();
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: updateAppScreen,
      page: () {
        return const UpdateAppScreen();
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: noInternetScreen,
      page: () {
        return const NoInternetScreen();
      },
      transition: Transition.fadeIn,
    ),

    //auth
    GetPage(
      name: loginScreen,
      page: () {
        return const LoginScreen();
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: createAccountScreen,
      page: () {
        return const CreateAccountScreen();
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: verifyProfileScreen,
      page: () {
        return  VerifyProfile();
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () {
        return const ForgotPassword();
      },
      transition: Transition.fadeIn,
    ),

    //inapp
    GetPage(
      name: homeScreen,
      page: () {
        return const HomeScreen();
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: locationScreen,
      page: () {
        return const LocationScreen();
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: newLocationScreen,
      page: () {
        return const NewLocation();
      },
      transition: Transition.fadeIn,
    ),




  ];
}
