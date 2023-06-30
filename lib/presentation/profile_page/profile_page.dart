import '../profile_page/widgets/profile_item_widget.dart';
import 'bloc/profile_bloc.dart';
import 'models/profile_item_model.dart';
import 'models/profile_model.dart';
import 'package:dave_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(ProfileState(
        profileModelObj: ProfileModel(),
      ))
        ..add(ProfileInitialEvent()),
      child: ProfilePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
          width: getHorizontalSize(
            393,
          ),
          decoration: AppDecoration.fillGray100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: getVerticalSize(
                          168,
                        ),
                        width: getHorizontalSize(
                          393,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: getVerticalSize(
                                  148,
                                ),
                                width: getHorizontalSize(
                                  393,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.green900,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 28,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getSize(
                                        88,
                                      ),
                                      width: getSize(
                                        88,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.blueGray100,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            44,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 20,
                                        top: 5,
                                        bottom: 24,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_buyer".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanExtraBold32,
                                          ),
                                          Text(
                                            "lbl_09467135901".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanRegular16,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 28,
                          top: 18,
                        ),
                        child: Text(
                          "lbl_favorites".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratRomanBold18.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.45,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(
                            left: 28,
                            top: 13,
                          ),
                          child: IntrinsicWidth(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration:
                                      AppDecoration.outlineBlack90019.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: getVerticalSize(
                                          120,
                                        ),
                                        width: getHorizontalSize(
                                          200,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.blueGray100,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                              getHorizontalSize(
                                                10,
                                              ),
                                            ),
                                            topRight: Radius.circular(
                                              getHorizontalSize(
                                                10,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 8,
                                          top: 6,
                                        ),
                                        child: Text(
                                          "lbl_fertilizer".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtMontserratRomanBold14,
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          161,
                                        ),
                                        margin: getMargin(
                                          left: 8,
                                          top: 10,
                                          bottom: 5,
                                        ),
                                        child: Text(
                                          "msg_lorem_ipsum_lorem".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratRomanMedium12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 16,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack90019.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: getVerticalSize(
                                          120,
                                        ),
                                        width: getHorizontalSize(
                                          200,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.blueGray100,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                              getHorizontalSize(
                                                10,
                                              ),
                                            ),
                                            topRight: Radius.circular(
                                              getHorizontalSize(
                                                10,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                          top: 11,
                                        ),
                                        child: Text(
                                          "lbl_vegetables".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtMontserratRomanBold14,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          width: getHorizontalSize(
                                            184,
                                          ),
                                          margin: getMargin(
                                            top: 5,
                                            bottom: 9,
                                          ),
                                          child: Text(
                                            "msg_lorem_ipsum_lorem".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanMedium12,
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
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 46,
                            top: 32,
                            right: 27,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_history".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratRomanExtraBold18
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.45,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 1,
                                ),
                                child: Text(
                                  "lbl_see_all".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanBold16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          603,
                        ),
                        width: getHorizontalSize(
                          393,
                        ),
                        margin: getMargin(
                          top: 21,
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  left: 44,
                                  right: 31,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
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
                                                left: 73,
                                                top: 11,
                                                right: 73,
                                                bottom: 11,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineBlack90019
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder4,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "lbl_fertilizer".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRomanMedium16,
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      bottom: 27,
                                                    ),
                                                    child: Text(
                                                      "lbl_farmer".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRomanMedium14,
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
                                                color:
                                                    ColorConstant.blueGray100,
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
                                    ),
                                    Container(
                                      height: getVerticalSize(
                                        88,
                                      ),
                                      width: getHorizontalSize(
                                        318,
                                      ),
                                      margin: getMargin(
                                        top: 15,
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
                                                left: 72,
                                                top: 12,
                                                right: 72,
                                                bottom: 12,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineBlack90019
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder4,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "lbl_vegetables".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRomanMedium16,
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      bottom: 26,
                                                    ),
                                                    child: Text(
                                                      "lbl_farner".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRomanMedium14,
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
                                                color:
                                                    ColorConstant.blueGray100,
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
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 15,
                                      ),
                                      child: BlocSelector<ProfileBloc,
                                          ProfileState, ProfileModel?>(
                                        selector: (state) =>
                                            state.profileModelObj,
                                        builder: (context, profileModelObj) {
                                          return ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (
                                              context,
                                              index,
                                            ) {
                                              return SizedBox(
                                                height: getVerticalSize(
                                                  15,
                                                ),
                                              );
                                            },
                                            itemCount: profileModelObj
                                                    ?.profileItemList.length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              ProfileItemModel model =
                                                  profileModelObj
                                                              ?.profileItemList[
                                                          index] ??
                                                      ProfileItemModel();
                                              return ProfileItemWidget(
                                                model,
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle6,
                              height: getVerticalSize(
                                65,
                              ),
                              width: getHorizontalSize(
                                393,
                              ),
                              alignment: Alignment.topCenter,
                              margin: getMargin(
                                top: 249,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
