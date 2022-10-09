import 'package:flutter/material.dart';
import 'package:food_ninja/resources/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdPartyAppButton extends StatelessWidget {
  const ThirdPartyAppButton(
      {super.key,
      required this.onPressed,
      this.text,
      required this.icon,
      this.height = 24});
  final void Function() onPressed;
  final String? text;
  final String icon;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.85,
      child: ElevatedButton.icon(
        icon: Image.asset(
          icon,
          height: height,
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
        label: text != null
            ? Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  text!,
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: MyColors.black,
                  ),
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
