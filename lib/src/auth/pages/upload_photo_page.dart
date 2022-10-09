import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../resources/assets.dart';
import '../../../resources/colors.dart';
import '../../../resources/fonts.dart';
import '../../widgets/bg_pattern.dart';
import '../../widgets/my_button.dart';

class UploadPhotoPage extends StatelessWidget {
  const UploadPhotoPage({super.key});

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
                      'Upload Your Photo \nProfile',
                      style: MyFontStyles.title(),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'This data will be displayed in your account \nprofile for security',
                      style: MyFontStyles.normal(),
                    ),
                    const SizedBox(height: 40),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        _TakePhotoOption(
                          icon: IconlyLight.image,
                          text: 'Take from Gallery',
                        ),
                        SizedBox(height: 12),
                        _TakePhotoOption(
                          icon: IconlyLight.camera,
                          text: 'Take Photo',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.8),
            child: PrimaryButton(
              onPressed: () {},
              text: 'Next',
            ),
          )
        ],
      ),
    );
  }
}

class _TakePhotoOption extends StatelessWidget {
  const _TakePhotoOption({required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
          ),
          const SizedBox(height: 10),
          Text(text),
        ],
      ),
    );
  }
}
