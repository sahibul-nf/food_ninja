import 'package:flutter/material.dart';
import 'package:food_ninja/resources/colors.dart';
import 'package:food_ninja/resources/fonts.dart';
import 'package:food_ninja/src/routes.dart';
import 'package:food_ninja/src/widgets/bg_pattern.dart';
import 'package:food_ninja/src/widgets/my_button.dart';
import 'package:food_ninja/src/widgets/my_textfield.dart';

import '../../../resources/assets.dart';

class SignUpProcessPage extends StatelessWidget {
  const SignUpProcessPage({super.key});

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
                      'Fill in your bio to get \nstarted',
                      style: MyFontStyles.title(),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'This data will be displayed in your account \nprofile for security',
                      style: MyFontStyles.normal(),
                    ),
                    const SizedBox(height: 40),
                    const MyTextField(hintText: 'First name'),
                    const SizedBox(height: 12),
                    const MyTextField(hintText: 'Last name'),
                    const SizedBox(height: 12),
                    const MyTextField(hintText: 'Phone number'),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.8),
            child: PrimaryButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.paymentMethod);
              },
              text: 'Next',
            ),
          )
        ],
      ),
    );
  }
}
