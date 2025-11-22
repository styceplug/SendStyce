import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:send_styce/utils/colors.dart';
import 'package:send_styce/utils/dimensions.dart';
import 'package:send_styce/utils/theme_ext.dart';
import 'package:send_styce/widgets/custom_button.dart';

import '../../../widgets/custom_appbar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        customTitle: Text(
          'Profile',
          style: TextStyle(fontSize: Dimensions.font20),
        ),
        backgroundColor: context.background,
      ),
      body: Container(
        height: Dimensions.screenHeight,
        width: Dimensions.screenWidth,
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: Dimensions.height100,
              width: Dimensions.width100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.card,
              ),
            ),
            SizedBox(height: Dimensions.height15),
            Text(
              'Oluwaferanmi O.',
              style: TextStyle(
                fontSize: Dimensions.font20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text('styceplug@gmail.com'),
            SizedBox(height: Dimensions.height50),
            Container(
              width: Dimensions.screenWidth,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width20,
                vertical: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.02),
                    spreadRadius: 5,
                    blurRadius: 7,
                  ),
                ],
                color: context.card.withOpacity(0.5),
              ),

              child: Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: Dimensions.width15,),
                  Text('Personal Information')
                ],
              ),
            ),
            SizedBox(height: Dimensions.height10),
            Container(
              width: Dimensions.screenWidth,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width20,
                vertical: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.02),
                    spreadRadius: 5,
                    blurRadius: 7,
                  ),
                ],
                color: context.card.withOpacity(0.5),
              ),

              child: Row(
                children: [
                  Icon(Icons.local_police),
                  SizedBox(width: Dimensions.width15,),
                  Text('Privacy Policy')
                ],
              ),
            ),
            SizedBox(height: Dimensions.height10),
            Container(
              width: Dimensions.screenWidth,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width20,
                vertical: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.02),
                    spreadRadius: 5,
                    blurRadius: 7,
                  ),
                ],
                color: context.card.withOpacity(0.5),
              ),

              child: Row(
                children: [
                  Icon(CupertinoIcons.leaf_arrow_circlepath),
                  SizedBox(width: Dimensions.width15,),
                  Text('Terms of Service')
                ],
              ),
            ),
            SizedBox(height: Dimensions.height10),
            Container(
              width: Dimensions.screenWidth,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width20,
                vertical: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.02),
                    spreadRadius: 5,
                    blurRadius: 7,
                  ),
                ],
                color: context.card.withOpacity(0.5),
              ),

              child: Row(
                children: [
                  Icon(Icons.info),
                  SizedBox(width: Dimensions.width15,),
                  Text('Help Center')
                ],
              ),
            ),
            SizedBox(height: Dimensions.height10),
            Container(
              width: Dimensions.screenWidth,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width20,
                vertical: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.02),
                    spreadRadius: 5,
                    blurRadius: 7,
                  ),
                ],
                color: context.card.withOpacity(0.5),
              ),

              child: Row(
                children: [
                  Icon(Iconsax.logout),
                  SizedBox(width: Dimensions.width15,),
                  Text('Log Out')
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
