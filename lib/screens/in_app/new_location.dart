import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:send_styce/utils/dimensions.dart';
import 'package:send_styce/widgets/custom_button.dart';
import 'package:send_styce/widgets/custom_textfield.dart';

import '../../widgets/custom_appbar.dart';

class NewLocation extends StatefulWidget {
  const NewLocation({super.key});

  @override
  State<NewLocation> createState() => _NewLocationState();
}

class _NewLocationState extends State<NewLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Add a New Location'),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.width20,
          vertical: Dimensions.height20,
        ),
        child: Column(
          children: [
            CustomButton(
              text: 'Use Current Location',
              onPressed: () {},
              icon: Icon(Iconsax.location_add),
            ),
            SizedBox(height: Dimensions.height20,),
            CustomTextField(hintText: 'Manually Select Location',),
            SizedBox(height: Dimensions.height20,),
            CustomTextField(hintText: 'What shall we call this place?',),
            Spacer(),
            CustomButton(text: 'Save Location', onPressed: (){}),
            SizedBox(height: Dimensions.height50)
          ],
        ),
      ),
    );
  }
}
