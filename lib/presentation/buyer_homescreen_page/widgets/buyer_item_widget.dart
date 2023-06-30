import '../models/buyer_item_model.dart';
import 'package:dave_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BuyerItemWidget extends StatelessWidget {
  BuyerItemWidget(
    this.buyerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BuyerItemModel buyerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: ColorConstant.whiteA700,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: getVerticalSize(
          93,
        ),
        width: getHorizontalSize(
          327,
        ),
        padding: getPadding(
          left: 12,
          top: 8,
          right: 12,
          bottom: 8,
        ),
        decoration: AppDecoration.outlineGray9000a.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: getPadding(
                  right: 1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          buyerItemModelObj.nameTxt,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratMedium14,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 31,
                          ),
                          child: Text(
                            buyerItemModelObj.priceTxt,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratSemiBold20Green500,
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgDownload,
                      height: getVerticalSize(
                        13,
                      ),
                      width: getHorizontalSize(
                        16,
                      ),
                      margin: getMargin(
                        left: 104,
                        top: 4,
                        bottom: 56,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage10,
                    height: getVerticalSize(
                      71,
                    ),
                    width: getHorizontalSize(
                      64,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgStar,
                    height: getVerticalSize(
                      11,
                    ),
                    width: getHorizontalSize(
                      12,
                    ),
                    margin: getMargin(
                      left: 127,
                      top: 53,
                      bottom: 6,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgStar,
                    height: getVerticalSize(
                      11,
                    ),
                    width: getHorizontalSize(
                      12,
                    ),
                    margin: getMargin(
                      left: 6,
                      top: 53,
                      bottom: 6,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgStar,
                    height: getVerticalSize(
                      11,
                    ),
                    width: getHorizontalSize(
                      12,
                    ),
                    margin: getMargin(
                      left: 6,
                      top: 53,
                      bottom: 6,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgStar,
                    height: getVerticalSize(
                      11,
                    ),
                    width: getHorizontalSize(
                      12,
                    ),
                    margin: getMargin(
                      left: 6,
                      top: 53,
                      bottom: 6,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgStar,
                    height: getVerticalSize(
                      11,
                    ),
                    width: getHorizontalSize(
                      12,
                    ),
                    margin: getMargin(
                      left: 6,
                      top: 53,
                      bottom: 6,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 6,
                      top: 51,
                      bottom: 1,
                    ),
                    child: Text(
                      "lbl_5_0".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRegular14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
