import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:send_styce/utils/colors.dart';
import 'package:send_styce/utils/dimensions.dart';
import 'package:send_styce/utils/theme_ext.dart';
import 'package:send_styce/widgets/custom_appbar.dart';
import 'package:send_styce/widgets/custom_button.dart';
import 'package:send_styce/widgets/custom_textfield.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Set your location',
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.width20,
          vertical: Dimensions.height20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(hintText: 'Enter your location'),
            SizedBox(height: Dimensions.height20),
            CustomButton(
              text: 'Use Current Location',
              onPressed: () {},
              padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
              textStyle: TextStyle(fontSize: Dimensions.font15,fontWeight: FontWeight.w500,color: AppColors.white),
              icon: Icon(CupertinoIcons.location,size: Dimensions.iconSize20,color: AppColors.white,),
            ),
            SizedBox(height: Dimensions.height20),
            Text(
              'Pre-saved Locations',
              style: TextStyle(
                fontSize: Dimensions.font15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: Dimensions.height20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                locationCard(Iconsax.home,"Home"),
                SizedBox(width: Dimensions.width10),
                locationCard(Iconsax.building,"Work"),
                SizedBox(width: Dimensions.width10),
                locationCard(Iconsax.location_add,"Add New"),
              ],
            )
          ],
        ),
      ),


    );


  }
  Widget locationCard(IconData icon,String title){
    return Container(
      height: Dimensions.height100*0.8,
      width: Dimensions.width100*0.8,
      decoration: BoxDecoration(
          color: context.card,
          border: Border.all(color: context.goldSoft),
          borderRadius: BorderRadius.circular(Dimensions.radius10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Spacer(),
          Icon(icon),
          SizedBox(height: Dimensions.height10),
          Text(title),
          Spacer(),
        ],
      ),
    );
  }

}

