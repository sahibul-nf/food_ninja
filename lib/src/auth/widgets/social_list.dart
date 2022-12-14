import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_ninja/resources/assets.dart';

import '../../widgets/third_party_app_button.dart';

class SocialList extends StatelessWidget {
  const SocialList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        ThirdPartyAppButton(
          onPressed: () {
            log('Pressed Google');
          },
          text: 'Google',
          icon: MyAssets.imgGoogle,
        ),
        const SizedBox(height: 12),
        ThirdPartyAppButton(
          onPressed: () {
            log('Pressed Facebook');
          },
          text: 'Facebook',
          icon: MyAssets.imgFacebook,
        ),
        const SizedBox(height: 12),
        ThirdPartyAppButton(
          onPressed: () {
            log('Pressed Apple');
          },
          text: 'Apple',
          icon: MyAssets.imgApple,
        ),
      ],
    );
  }
}
