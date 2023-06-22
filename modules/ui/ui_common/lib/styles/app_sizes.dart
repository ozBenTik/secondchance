import 'dart:io';

import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';

/// Screen Ratio
// Height 844
// Width 390

class AppSizes {
  double get appBarHeight => Get.height * 0.08;
  double get bottomNavigationHeight => Get.height * 0.09;
  double get bottomNavigationHeightExtra =>
      bottomNavigationHeight * (Platform.isAndroid ? 1.6 : 2.2);

  double get screenVerticalPadding => Get.height * 0.02;
  double get screenHorizontalPadding => Get.width * 0.065;
  double get buttonHeight => 52;

  double get paddingHorizontalXTiny => Get.width * 0.01;
  double get paddingHorizontalTiny => Get.width * 0.02;
  double get paddingHorizontalSmall => Get.width * 0.04;
  double get paddingHorizontalMedium => Get.width * 0.05;

  double get paddingVerticalTiny => Get.height * 0.01;
  double get paddingVerticalSmall => Get.height * 0.016;
  double get paddingVerticalMedium => Get.height * 0.03;
  double get paddingVerticalLarge => Get.height * 0.05;

  double get veryTinyHeightSpacing => Get.height * 0.01;
  double get tinyHeightSpacing => Get.height * 0.015;
  double get smallHeightSpacing => Get.height * 0.025;
  double get mediumHeightSpacing => Get.height * 0.05;
  double get xMediumHeightSpacing => Get.height * 0.06;
  double get largeHeightSpacing => Get.height * 0.075;
  double get xLargeHeightSpacing => Get.height * 0.1;
  double get xxLargeHeightSpacing => Get.height * 0.15;

  double get veryTinyWidthSpacing => Get.width * 0.025;
  double get tinyWidthSpacing => Get.width * 0.05;
  double get smallWidthSpacing => Get.width * 0.1;
  double get mediumWidthSpacing => Get.width * 0.125;

  double get logoWidthSmall => Get.width * 0.2;
  double get logoHeightSmall => Get.height * 0.065;
  double get logoWidthMedium => Get.width * 0.3;
  double get logoHeightMedium => Get.height * 0.15;
  double get logoWidthLarge => Get.width * 0.5;
  double get logoHeightLarge => Get.height * 0.25;

  /// Logo Sizes
  Size get smallLogoSize => Size(logoWidthSmall, logoHeightSmall);
  Size get mediumLogoSize => Size(logoWidthMedium, logoHeightMedium);

  double get navigationIconSize => 28.0;
  double get emptyChatIconSize => 14.0;

  double get publicProfileImageHeight => Get.height * .45;

  const AppSizes();
}
