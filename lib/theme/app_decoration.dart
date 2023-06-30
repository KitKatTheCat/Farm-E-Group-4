import 'package:flutter/material.dart';
import 'package:dave_s_application3/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillBluegray700 => BoxDecoration(
        color: ColorConstant.blueGray700,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get fillBluegray5001 => BoxDecoration(
        color: ColorConstant.blueGray5001,
      );
  static BoxDecoration get txtOutlineBlack90014 => BoxDecoration();
  static BoxDecoration get gradientBlack90075Black90000 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            -0.01,
            0.5,
          ),
          end: Alignment(
            1,
            0.5,
          ),
          colors: [
            ColorConstant.black90075,
            ColorConstant.black90028,
            ColorConstant.black90000,
          ],
        ),
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: ColorConstant.black900,
      );
  static BoxDecoration get fillLightgreen900 => BoxDecoration(
        color: ColorConstant.lightGreen900,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineBlack9000a => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9000a,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9000c => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9000c,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              -4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray9000a01 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray9000a01,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray9000a => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray9000a,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray300 => BoxDecoration(
        color: ColorConstant.gray300,
      );
  static BoxDecoration get fillBluegray90001 => BoxDecoration(
        color: ColorConstant.blueGray90001,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: ColorConstant.gray200,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get outlineBlack90019 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90019,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get gradientBlack9006bBlack90000 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            -0.01,
            0.5,
          ),
          end: Alignment(
            1,
            0.5,
          ),
          colors: [
            ColorConstant.black9006b,
            ColorConstant.black90028,
            ColorConstant.black90000,
          ],
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
