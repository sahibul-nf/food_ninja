import 'package:flutter/material.dart';
import 'package:food_ninja/resources/shapes.dart';
import 'package:food_ninja/src/widgets/success_page.dart';

import '../../../resources/assets.dart';
import '../../../resources/colors.dart';
import '../../../resources/fonts.dart';
import '../../widgets/bg_pattern.dart';
import '../../widgets/my_button.dart';

class SetLocationPage extends StatelessWidget {
  const SetLocationPage({super.key});

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
                      'Set Your Location',
                      style: MyFontStyles.title(),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'This data will be displayed in your account \nprofile for security',
                      style: MyFontStyles.normal(),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: MyShapes.borderRadiusM,
                        boxShadow: [MyShapes.shadow],
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: MyColors.orangeBg.withOpacity(0.2),
                                  borderRadius: MyShapes.borderRadiusL,
                                ),
                                child: const Icon(
                                  Icons.location_on_outlined,
                                  color: MyColors.orange,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                'Your location',
                                style: MyFontStyles.subtitle(fontSize: 14),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: double.infinity,
                            height: 55,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                backgroundColor: MyColors.grey,
                              ),
                              child: Text(
                                "Set Location",
                                style: MyFontStyles.subtitle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.8),
            child: PrimaryButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SuccessPage(
                      infoText: "Your Profile is Already to Use",
                      onPressedButton: () {
                        Navigator.pop(context);
                      },
                      textButton: "Try Order",
                    ),
                  ),
                );
              },
              text: 'Next',
            ),
          )
        ],
      ),
    );
  }
}
