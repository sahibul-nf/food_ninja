import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/resources/colors.dart';
import 'package:food_ninja/resources/assets.dart';
import 'package:food_ninja/src/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class SplaceScreen extends StatelessWidget {
  const SplaceScreen({super.key});

  void _onNext(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        RouteNames.onboarding,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    _onNext(context);

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
          // Logo Brand
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DelayedDisplay(
                  delay: const Duration(milliseconds: 300),
                  child: Image.asset(
                    MyAssets.imgLogo,
                    width: 175,
                  ),
                ),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 700),
                  child: Text(
                    'Food Ninja',
                    style: GoogleFonts.viga(
                      fontSize: 40,
                      fontWeight: FontWeight.normal,
                      color: MyColors.primaryDark,
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 750),
                  child: Text(
                    'Deliever Favorite Food',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      letterSpacing: 1,
                      color: MyColors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
