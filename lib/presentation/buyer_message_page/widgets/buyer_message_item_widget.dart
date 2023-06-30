import '../models/buyer_message_item_model.dart';
import 'package:dave_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BuyerMessageItemWidget extends StatelessWidget {
  BuyerMessageItemWidget(
    this.buyerMessageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BuyerMessageItemModel buyerMessageItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 14,
        bottom: 14,
      ),
      decoration: AppDecoration.outlineBlack9000a.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: getVerticalSize(
              69,
            ),
            width: getHorizontalSize(
              65,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.blueGray10002,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  32,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 15,
              bottom: 14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      buyerMessageItemModelObj.typeTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style:
                          AppStyle.txtMontserratRomanMedium14Gray900.copyWith(
                        letterSpacing: getHorizontalSize(
                          1.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 6,
                      ),
                      child: Text(
                        buyerMessageItemModelObj.greetingTxt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratRomanRegular12.copyWith(
                          letterSpacing: getHorizontalSize(
                            1.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    left: 101,
                    top: 12,
                    bottom: 11,
                  ),
                  child: Text(
                    "lbl_2_00pm".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratRomanRegular12.copyWith(
                      letterSpacing: getHorizontalSize(
                        1.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
