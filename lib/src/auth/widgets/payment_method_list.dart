import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_ninja/resources/assets.dart';

import '../../widgets/third_party_app_button.dart';

class PaymentMethodList extends StatelessWidget {
  const PaymentMethodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ThirdPartyAppButton(
          onPressed: () {
            log('Pressed Paypal');
          },
          icon: MyAssets.imgPaypal,
        ),
        const SizedBox(height: 12),
        ThirdPartyAppButton(
          onPressed: () {
            log('Pressed Visa');
          },
          height: 50,
          icon: MyAssets.imgVisa,
        ),
        const SizedBox(height: 12),
        ThirdPartyAppButton(
          onPressed: () {
            log('Pressed Payoneer');
          },
          icon: MyAssets.imgPayoneer,
        ),
      ],
    );
  }
}
