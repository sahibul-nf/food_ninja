import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/resources/colors.dart';
import 'package:food_ninja/resources/fonts.dart';

import '../../resources/assets.dart';
import 'my_button.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage(
      {super.key,
      required this.infoText,
      required this.onPressedButton,
      required this.textButton});
  final String infoText;
  final void Function() onPressedButton;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Pattern
          Container(
            color: Colors.white,
            child: Image.asset(
              MyAssets.imgPattern,
              height: MediaQuery.of(context).size.height,
            ),
          ),
          Align(
            alignment: const Alignment(0, -0.2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DelayedDisplay(
                  delay: const Duration(milliseconds: 100),
                  slidingBeginOffset: const Offset(0, 0),
                  child: Image.asset(
                    MyAssets.imgSuccessIllustration,
                    width: 170,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  "Congrats!",
                  style: MyFontStyles.title(
                    color: MyColors.primaryDark,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  infoText,
                  style: MyFontStyles.subtitle(),
                ),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.8),
            child: PrimaryButton(
              onPressed: onPressedButton,
              text: textButton,
            ),
          )
        ],
      ),
    );
  }
}
