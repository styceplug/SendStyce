import 'package:flutter/material.dart';
import 'package:send_styce/utils/theme_ext.dart';

import '../utils/app_constants.dart';
import '../utils/dimensions.dart';

class MarketOptionCard extends StatelessWidget {
  String gif;
  String title;

  MarketOptionCard({super.key, required this.gif, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Dimensions.height70,
          width: Dimensions.width70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              Dimensions.radius10,
            ),
            color: context.card
          ),
          child: Image.asset(
            AppConstants.getGifAsset(gif),
            fit: BoxFit.contain,
            color: context.primary,
          ),
        ),
        SizedBox(height: Dimensions.height5),
        Text(
          title,
          style: TextStyle(
            fontSize: Dimensions.font12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
