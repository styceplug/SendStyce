import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:send_styce/routes/routes.dart';
import 'package:send_styce/utils/app_constants.dart';
import 'package:send_styce/utils/colors.dart';
import 'package:send_styce/utils/dimensions.dart';
import 'package:send_styce/utils/theme_ext.dart';
import 'package:send_styce/widgets/custom_appbar.dart';
import 'package:send_styce/widgets/custom_button.dart';
import 'package:send_styce/widgets/custom_textfield.dart';
import 'package:send_styce/widgets/restaurant_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: CustomAppbar(
        customTitle: Text(
          'Home',
          style: TextStyle(fontSize: Dimensions.font20),
        ),
        backgroundColor: context.background,
      ),*/
      body: Container(
        height: Dimensions.screenHeight,
        width: Dimensions.screenWidth,
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.width20,
          vertical: Dimensions.bottomNavIconHeight * 2.5,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Hello Oluwaferanmi,',
                        style: TextStyle(
                          fontSize: Dimensions.font16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Good Morning to you ☀️.',
                        style: TextStyle(
                          fontSize: Dimensions.font13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.locationScreen);
                    },

                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.width10,
                        vertical: Dimensions.height10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius5),
                        border: Border.all(color: AppColors.grey2),
                      ),
                      child: Icon(Iconsax.location),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.height20),
              Container(
                width: Dimensions.screenWidth,
                height: Dimensions.height100 * 1.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                ),
                child: Image.asset(
                  AppConstants.getPngAsset('ads'),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: Dimensions.height10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: Dimensions.height10,
                    width: Dimensions.width10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.gold,
                    ),
                  ),
                  SizedBox(width: Dimensions.width5),
                  Container(
                    height: Dimensions.height10,
                    width: Dimensions.width10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.grey4,
                    ),
                  ),
                  SizedBox(width: Dimensions.width5),
                  Container(
                    height: Dimensions.height10,
                    width: Dimensions.width10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.grey4,
                    ),
                  ),
                  SizedBox(width: Dimensions.width5),
                  Container(
                    height: Dimensions.height10,
                    width: Dimensions.width10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.grey4,
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.height20),
              Text(
                "Restaurants",
                style: TextStyle(fontSize: Dimensions.font18),
              ),
              Text(
                "Explore our wide range of Restaurants",
                style: TextStyle(
                  fontSize: Dimensions.font13,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: Dimensions.height20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BusinessCard(
                      name: 'ABCD Restaurant',
                      location: 'Rd 5 Iworoko, Ekiti State',
                      image:
                          "https://www.abcd-restaurant.be/wp-content/uploads/2025/01/logo_blanc_restaurant_ABCD_Beauraing.png.webp",
                    ),
                    BusinessCard(
                      name: 'ABCD Restaurant',
                      location: 'Rd 5 Iworoko, Ekiti State',
                      image:
                          "https://www.abcd-restaurant.be/wp-content/uploads/2025/01/logo_blanc_restaurant_ABCD_Beauraing.png.webp",
                    ),
                    BusinessCard(
                      name: 'ABCD Restaurant',
                      location: 'Rd 5 Iworoko, Ekiti State',
                      image:
                          "https://www.abcd-restaurant.be/wp-content/uploads/2025/01/logo_blanc_restaurant_ABCD_Beauraing.png.webp",
                    ),
                    BusinessCard(
                      name: 'ABCD Restaurant',
                      location: 'Rd 5 Iworoko, Ekiti State',
                      image:
                          "https://www.abcd-restaurant.be/wp-content/uploads/2025/01/logo_blanc_restaurant_ABCD_Beauraing.png.webp",
                    ),
                    BusinessCard(
                      name: 'ABCD Restaurant',
                      location: 'Rd 5 Iworoko, Ekiti State',
                      image:
                          "https://www.abcd-restaurant.be/wp-content/uploads/2025/01/logo_blanc_restaurant_ABCD_Beauraing.png.webp",
                    ),
                    Container(
                      height: Dimensions.height100 * 1.5,
                      width: Dimensions.width100 * 1.7,
                      margin: EdgeInsets.only(right: Dimensions.width20),
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.width20,
                        vertical: Dimensions.height20,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: context.goldSoft),
                        borderRadius: BorderRadius.circular(
                          Dimensions.radius10,
                        ),
                        color: context.card,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.02),
                            spreadRadius: 5,
                            blurRadius: 7,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: Dimensions.height10 * 8,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.width5,
                              vertical: Dimensions.height5,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                Dimensions.radius5,
                              ),
                            ),
                            child: Icon(
                              CupertinoIcons.plus,
                              size: Dimensions.iconSize30 * 2.2,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'See More',
                            style: TextStyle(
                              fontSize: Dimensions.font16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimensions.height30),
              Text(
                "Book Reservation",
                style: TextStyle(fontSize: Dimensions.font18),
              ),
              Text(
                "Book your reservation with you favourite provider",
                style: TextStyle(
                  fontSize: Dimensions.font13,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: Dimensions.height20),
              BusinessCardList(
                name: 'ABCD Hotel & Suites',
                location: 'Iworoko, Ekiti State University',
                image:
                    "https://www.abcd-restaurant.be/wp-content/uploads/2025/01/logo_blanc_restaurant_ABCD_Beauraing.png.webp",
                rating: '5.0',
              ),
              BusinessCardList(
                name: 'ABCD Hotel & Suites',
                location: 'Iworoko, Ekiti State University',
                image:
                    "https://www.abcd-restaurant.be/wp-content/uploads/2025/01/logo_blanc_restaurant_ABCD_Beauraing.png.webp",
                rating: '5.0',
              ),
              BusinessCardList(
                name: 'ABCD Hotel & Suites',
                location: 'Iworoko, Ekiti State University',
                image:
                    "https://www.abcd-restaurant.be/wp-content/uploads/2025/01/logo_blanc_restaurant_ABCD_Beauraing.png.webp",
                rating: '5.0',
              ),
              BusinessCardList(
                name: 'ABCD Hotel & Suites',
                location: 'Iworoko, Ekiti State University',
                image:
                    "https://www.abcd-restaurant.be/wp-content/uploads/2025/01/logo_blanc_restaurant_ABCD_Beauraing.png.webp",
                rating: '5.0',
              ),

              SizedBox(height: Dimensions.height100 * 5),
            ],
          ),
        ),
      ),
    );
  }
}
