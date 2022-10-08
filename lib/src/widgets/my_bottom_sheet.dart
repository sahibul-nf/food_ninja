import 'package:flutter/material.dart';

import '../../resources/fonts.dart';

class MyBottomSheet {
  static void show(BuildContext context, String title, Widget child) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: MyFontStyles.subtitle(),
                  ),
                  const CloseButton(),
                ],
              ),
            ),
            const Divider(),
            child,
            const SizedBox(height: 70),
          ],
        );
      },
    );
  }
}
