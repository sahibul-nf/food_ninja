import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/resources/fonts.dart';
import 'package:food_ninja/src/auth/widgets/social_list.dart';
import 'package:food_ninja/src/widgets/my_bottom_sheet.dart';
import 'package:food_ninja/src/widgets/my_button.dart';
import 'package:food_ninja/src/widgets/my_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../resources/assets.dart';
import '../../../resources/colors.dart';
import '../../routes.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
          // Logo Brand
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
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
                ),
                const SizedBox(height: 50),
                Text(
                  'Login to Your Account',
                  style: MyFontStyles.title(),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: const MyTextField(
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(height: 12),
                // Password Input
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: const MyTextField(
                    hintText: 'Password',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Or Continue With',
                    style: MyFontStyles.normal(),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    MyBottomSheet.show(
                      context,
                      'Social Accounts',
                      const SocialList(),
                    );
                  },
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: MyColors.grey,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Social Accounts',
                          style: TextStyle(
                            fontSize: 14,
                            color: MyColors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot your password?',
                      style: MyFontStyles.normal(
                        color: MyColors.primaryDark,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                PrimaryButton(
                  onPressed: () {},
                  text: 'Login',
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account yet?  ",
                      style: MyFontStyles.normal(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, RouteNames.signup);
                      },
                      child: Text(
                        'Signup',
                        style: MyFontStyles.normal(
                          color: MyColors.primaryDark,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
