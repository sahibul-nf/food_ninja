import 'package:flutter/material.dart';
import 'package:food_ninja/resources/assets.dart';
import 'package:food_ninja/resources/colors.dart';
import 'package:food_ninja/resources/fonts.dart';
import 'package:food_ninja/src/routes.dart';
import 'package:food_ninja/src/widgets/my_button.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../providers/onboarding_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final pages = [
    const OnboardingItem(
      image: MyAssets.imgIllustration,
      text: 'Find your Comfort \nFood here',
      description:
          'Here You Can find a chef or dish for every \ntaste and color. Enjoy!',
    ),
    const OnboardingItem(
      image: MyAssets.imgIllustration2,
      text: 'Food Ninja is Where Your \nComfort Food Lives',
      description: 'Enjoy a fast and smooth food delivery at \nyour doorstep',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            SmoothPageIndicator(
              controller: context.watch<OnboardingBloc>().pageController,
              count: pages.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: MyColors.primaryDark,
                dotHeight: 10,
                dotWidth: 10,
              ),
              onDotClicked: (index) {
                context.read<OnboardingBloc>().previousPage();
              },
            ),
            Expanded(
              child: PageView.builder(
                controller: context.watch<OnboardingBloc>().pageController,
                itemCount: pages.length,
                itemBuilder: (context, index) {
                  return pages[index];
                },
              ),
            ),
            PrimaryButton(
              text: 'Next',
              onPressed: () {
                final onboardingBloc =
                    Provider.of<OnboardingBloc>(context, listen: false);

                if (onboardingBloc.currentPage == 1) {
                  Navigator.pushNamed(context, RouteNames.signup);
                } else {
                  onboardingBloc.nextPage();
                }
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class OnboardingItem extends StatelessWidget {
  const OnboardingItem(
      {super.key,
      required this.image,
      required this.text,
      required this.description});
  final String image;
  final String text;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
        ),
        const SizedBox(height: 20),
        Text(
          text,
          style: MyFontStyles.title(),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Text(
          description,
          style: MyFontStyles.normal(),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
