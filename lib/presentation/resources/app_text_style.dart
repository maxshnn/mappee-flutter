import 'dart:ui';

import 'package:mappee/presentation/resources/app_colors.dart';

abstract class AppTextStyle {
  const AppTextStyle();
  static TextStyle normalText = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static TextStyle normalRedText = TextStyle(
    color: AppColors.redColor,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static TextStyle headingText = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
  );

  static TextStyle captionText = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
  );

  static TextStyle titleText = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );

  static TextStyle titleGreyText = TextStyle(
    color: AppColors.primaryGreyTextColor,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );

  static TextStyle? formGreyText = TextStyle(
    color: AppColors.secondaryGreyTextColor,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static TextStyle subtitleText = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 10.0,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textButton = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
  );
}
