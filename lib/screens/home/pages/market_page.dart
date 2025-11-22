import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:send_styce/utils/app_constants.dart';
import 'package:send_styce/utils/colors.dart';
import 'package:send_styce/utils/theme_ext.dart';
import 'package:send_styce/widgets/custom_textfield.dart';
import 'package:send_styce/widgets/market_option_card.dart';
import 'package:send_styce/widgets/restaurant_card.dart';

import '../../../utils/dimensions.dart';
import '../../../widgets/custom_appbar.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        customTitle: Text(
          'Our Markets',
          style: TextStyle(fontSize: Dimensions.font20),
        ),
        backgroundColor: context.background,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.width20,
          vertical: Dimensions.height20,
        ),
        child: Column(
          children: [
            CustomTextField(
              hintText: 'Search Markets',
              prefixIcon: Icons.search,
              suffixIcon: Icon(Icons.cancel_outlined, color: AppColors.grey4),
            ),
            SizedBox(height: Dimensions.height20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MarketOptionCard(gif: 'restaurant', title: 'Restaurants'),
                SizedBox(width: Dimensions.width20),
                MarketOptionCard(gif: 'grocery', title: 'Supermarkets'),
                SizedBox(width: Dimensions.width20),
                MarketOptionCard(gif: 'laundry', title: 'Laundry'),

                SizedBox(width: Dimensions.width20),
                MarketOptionCard(gif: 'medicine', title: 'Pharmacies'),

              ],
            ),
            SizedBox(height: Dimensions.height20),
            BusinessCardList(
              name: 'ABCD Restaurant',
              location: 'Iworoko, Ekiti State University',
              image:
                  "https://www.abcd-restaurant.be/wp-content/uploads/2025/01/logo_blanc_restaurant_ABCD_Beauraing.png.webp",
              rating: '5.0',
              action: false,
            ),
          ],
        ),
      ),
    );
  }
}
