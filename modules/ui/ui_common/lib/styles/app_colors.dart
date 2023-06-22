import 'package:flutter/material.dart';

class AppColors {
  LinearGradient get gradient => const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.centerLeft,
        colors: [
          // Color(0xff5519E9),
          Color(0xffFE6B81),
          Color.fromARGB(0, 254, 107, 129),
        ],
      );

  Color get white => const Color(0xFFFFFFFF);

  Color get pink => const Color(0xFFFC6A82);

  Color get purple => const Color(0xFF5418EA);

  Color get lightPurple => const Color(0xFFDCCEFF);

  Color get black => const Color(0xFF000000);

  Color get darkGrey => const Color(0xFF2F2E2E);

  Color get grey => const Color(0xFF5C5C5C);

  Color get lightGrey => const Color(0xFF9F9F9F);

  Color get background => const Color(0xFFF5F4F8);

  Color get error => const Color(0xFFD30000);

  Color get onlineGreen => const Color(0xFF53C948);
  Color get onlineActiveLately => const Color(0xFFB9D4B7);
  Color get onlineSeenRecently => const Color(0xFF878787);

  ColorFilter get greyscaleFilter => ColorFilter.matrix(<double>[
        0.2126,
        0.7152,
        0.0722,
        0,
        0,
        0.2126,
        0.7152,
        0.0722,
        0,
        0,
        0.2126,
        0.7152,
        0.0722,
        0,
        0,
        0,
        0,
        0,
        1,
        0
      ]);

  const AppColors();
}
