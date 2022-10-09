import 'package:flutter/material.dart';
import 'package:food_ninja/src/auth/widgets/payment_method_list.dart';

import '../../../resources/assets.dart';
import '../../../resources/colors.dart';
import '../../../resources/fonts.dart';
import '../../routes.dart';
import '../../widgets/bg_pattern.dart';
import '../../widgets/my_button.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BgPattern(
            patternImage: MyAssets.imgPattern1,
          ),
          SafeArea(
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: MyColors.orangeBg.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const BackButton(
                        color: MyColors.orange,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Payment Method',
                      style: MyFontStyles.title(),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'This data will be displayed in your account \nprofile for security',
                      style: MyFontStyles.normal(),
                    ),
                    const SizedBox(height: 40),
                    const PaymentMethodList(),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.8),
            child: PrimaryButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.uploadPhoto);
              },
              text: 'Next',
            ),
          )
        ],
      ),
    );
  }
}
