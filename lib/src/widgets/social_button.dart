import 'package:flutter/material.dart';
import 'package:food_ninja/resources/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialButton extends StatelessWidget {
  const SocialButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.icon});
  final void Function() onPressed;
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.85,
      child: ElevatedButton.icon(
        icon: Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Image.asset(
            icon,
            height: 24,
          ),
        ),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(
              color: MyColors.grey,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        label: Text(
          text,
          style: GoogleFonts.lato(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: MyColors.black,
          ),
        ),
      ),
    );
  }
}
