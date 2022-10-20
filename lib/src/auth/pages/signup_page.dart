import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:food_ninja/resources/fonts.dart';
import 'package:food_ninja/src/routes.dart';
import 'package:food_ninja/src/widgets/my_button.dart';
import 'package:food_ninja/src/widgets/my_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../resources/assets.dart';
import '../../../resources/colors.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                  'Sign Up for Free',
                  style: MyFontStyles.title(),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: const MyTextField(
                    hintText: 'Username',
                    prefixIcon: Icon(
                      IconlyBroken.profile,
                      color: MyColors.orangeBg,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: const MyTextField(
                    hintText: 'Email',
                    prefixIcon: Icon(
                      IconlyBroken.message,
                      color: MyColors.orangeBg,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                // Password Input
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: MyTextField(
                    hintText: 'Password',
                    prefixIcon: const Icon(
                      IconlyBroken.password,
                      color: MyColors.orangeBg,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        IconlyBold.show,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                PrimaryButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.signupProcess);
                  },
                  text: 'Create Account',
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?  ',
                      style: MyFontStyles.normal(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, RouteNames.login);
                      },
                      child: Text(
                        'Login',
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
