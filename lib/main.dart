import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:send_styce/routes/routes.dart';
import 'package:send_styce/utils/app_constants.dart';
import 'package:send_styce/utils/colors.dart';
import 'package:send_styce/utils/dimensions.dart';
import 'package:send_styce/widgets/app_loading_overlay.dart';
import 'controllers/app_controller.dart';
import 'helpers/dependencies.dart' as dep;
import 'helpers/global_loader_controller.dart';
import 'helpers/version_service.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.deepOrange,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,

      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );

  await VersionService.init();
  await dep.init();
  Get.put(GlobalLoaderController(), permanent: true);
  HardwareKeyboard.instance.clearState();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GlobalLoaderController>(builder: (_) {
      return GetBuilder<AppController>(builder: (_) {
        return LayoutBuilder(builder: (context, constraint) {
          Dimensions.init(context);

          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppConstants.APP_NAME,
            theme: ThemeData(
              fontFamily: 'Poppins',
              brightness: Brightness.light,
              scaffoldBackgroundColor: AppColors.bgLight,
              cardColor: AppColors.cardLight,
              primaryColor: AppColors.primary,
              colorScheme: ColorScheme.light(
                primary: AppColors.primary,
                secondary: AppColors.gold,
                background: AppColors.bgLight,
              ),
            ),
            darkTheme: ThemeData(
              fontFamily: 'Poppins',
              brightness: Brightness.dark,
              scaffoldBackgroundColor: AppColors.charcoal,
              cardColor: AppColors.cardDark,
              primaryColor: AppColors.primaryDeep,
              colorScheme: ColorScheme.dark(
                primary: AppColors.primaryDeep,
                secondary: AppColors.goldFaded,
                background: AppColors.charcoal,
              ),
            ),
            themeMode: ThemeMode.system,
            getPages: AppRoutes.routes,
            initialRoute: AppRoutes.homeScreen,
            builder: (context, child) {
              final loaderController = Get.find<GlobalLoaderController>();
              return Obx(() {
                return Stack(
                  children: [
                    child!,
                    if (loaderController.isLoading.value)
                      const Positioned.fill(
                        child: AppLoadingOverlay(),
                      ),
                  ],
                );
              });
            },
          );
        });
      });
    });
  }
}

