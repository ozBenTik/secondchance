import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_common/styles/app_themes.dart';

class ErrorPage extends StatelessWidget {
  final String? errorTitleKey;
  final String? errorBodyKey;
  final String? bottomTextKey;
  final Function? onButtonClick;

  const ErrorPage(
      {this.errorTitleKey,
      this.errorBodyKey,
      this.bottomTextKey,
      this.onButtonClick,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Get.theme.layout.smallWidthSpacing),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Get.theme.colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(Get.width)),
              child: SvgPicture.asset(Get.theme.assets.png.x),
            ),
            Visibility(
              visible: errorTitleKey != null,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Get.theme.layout.mediumHeightSpacing),
                child: Text(
                  'error',
                  style: Get.textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Visibility(
              visible: errorBodyKey != null,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Get.theme.layout.tinyHeightSpacing),
                child: Text(
                  errorBodyKey ?? '',
                  style: Get.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Visibility(
              visible: onButtonClick != null,
              child: Container(
                  margin: EdgeInsets.symmetric(
                      vertical: Get.theme.layout.largeHeightSpacing),
                  child: TextButton(
                      child: Text('ok'),
                      onPressed: () => onButtonClick!())),
            )
          ],
        ),
      ),
    );
  }
}
