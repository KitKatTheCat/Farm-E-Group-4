import '../models/profile_item_model.dart';
import 'package:dave_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(
    this.profileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileItemModel profileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(
        88,
      ),
      width: getHorizontalSize(
        318,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: getMargin(
                left: 2,
              ),
              padding: getPadding(
                left: 8,
                top: 5,
                right: 8,
                bottom: 5,
              ),
              decoration: AppDecoration.outlineBlack90019.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 65,
                        top: 5,
                      ),
                      child: Text(
                        profileItemModelObj.typeTxt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratRomanMedium16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 1,
                      right: 38,
                    ),
                    child: Text(
                      profileItemModelObj.recipesTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRomanMedium14,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 65,
                      top: 14,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 2,
                          ),
                          child: RatingBar.builder(
                            initialRating: 0,
                            minRating: 0,
                            direction: Axis.horizontal,
                            allowHalfRating: false,
                            itemSize: getVerticalSize(
                              14,
                            ),
                            itemCount: 4,
                            updateOnDrag: true,
                            onRatingUpdate: (rating) {},
                            itemBuilder: (
                              context,
                              _,
                            ) {
                              return Icon(
                                Icons.star,
                              );
                            },
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCursor,
                          height: getSize(
                            14,
                          ),
                          width: getSize(
                            14,
                          ),
                          margin: getMargin(
                            top: 1,
                            bottom: 2,
                          ),
                        ),
                        Spacer(),
                        Text(
                          profileItemModelObj.k015videosTxt,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratItalicThin14.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.7,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: getVerticalSize(
                88,
              ),
              width: getHorizontalSize(
                65,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.blueGray100,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getHorizontalSize(
                      4,
                    ),
                  ),
                  bottomLeft: Radius.circular(
                    getHorizontalSize(
                      4,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
