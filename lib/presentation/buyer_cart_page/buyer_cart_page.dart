import 'bloc/buyer_cart_bloc.dart';
import 'models/buyer_cart_model.dart';
import 'package:dave_s_application3/core/app_export.dart';
import 'package:dave_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:dave_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class BuyerCartPage extends StatelessWidget {
  const BuyerCartPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BuyerCartBloc>(
        create: (context) =>
            BuyerCartBloc(BuyerCartState(buyerCartModelObj: BuyerCartModel()))
              ..add(BuyerCartInitialEvent()),
        child: BuyerCartPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BuyerCartBloc, BuyerCartState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray50,
              appBar: CustomAppBar(
                  height: getVerticalSize(81),
                  leadingWidth: 66,
                  leading: CustomIconButton(
                      height: 42,
                      width: 42,
                      margin: getMargin(left: 24, top: 7, bottom: 7),
                      variant: IconButtonVariant.FillBluegray50,
                      padding: IconButtonPadding.PaddingAll14,
                      onTap: () {
                        onTapBtnArrowleft(context);
                      },
                      child:
                          CustomImageView(svgPath: ImageConstant.imgArrowleft)),
                  title: Padding(
                      padding: getPadding(left: 16),
                      child: Text("lbl_home_cart".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtMontserratRegular16Bluegray50001))),
              body: SizedBox(
                  width: getHorizontalSize(375),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            margin: getMargin(left: 24, top: 25, right: 24),
                            padding: getPadding(all: 6),
                            decoration: AppDecoration.outlineGray9000a01
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder14),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: getMargin(bottom: 54),
                                      color: ColorConstant.blueGray5001,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder14),
                                      child: Container(
                                          height: getSize(80),
                                          width: getSize(80),
                                          padding: getPadding(
                                              left: 8,
                                              top: 4,
                                              right: 8,
                                              bottom: 4),
                                          decoration: AppDecoration
                                              .fillBluegray5001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder14),
                                          child: Stack(children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgImage1071x64,
                                                height: getVerticalSize(71),
                                                width: getHorizontalSize(64),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(16)),
                                                alignment: Alignment.center)
                                          ]))),
                                  Padding(
                                      padding: getPadding(
                                          left: 10,
                                          top: 4,
                                          right: 10,
                                          bottom: 10),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_land_fertilizer".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium16),
                                            Padding(
                                                padding: getPadding(top: 29),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("lbl_959".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold20Green500),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 8),
                                                          child: SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      24),
                                                              child: VerticalDivider(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          1),
                                                                  thickness:
                                                                      getVerticalSize(
                                                                          1),
                                                                  color: ColorConstant
                                                                      .blueGray200,
                                                                  indent:
                                                                      getHorizontalSize(
                                                                          3),
                                                                  endIndent:
                                                                      getHorizontalSize(
                                                                          5))))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 13),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgTrash,
                                                      height:
                                                          getVerticalSize(16),
                                                      width:
                                                          getHorizontalSize(14),
                                                      margin: getMargin(
                                                          top: 8, bottom: 7)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 6,
                                                          top: 8,
                                                          bottom: 5),
                                                      child: Text(
                                                          "lbl_remove".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratRegular14Bluegray10001)),
                                                  Container(
                                                      margin:
                                                          getMargin(left: 28),
                                                      padding: getPadding(
                                                          left: 11,
                                                          top: 15,
                                                          right: 11,
                                                          bottom: 15),
                                                      decoration: AppDecoration
                                                          .fillGray300
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder4),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                width:
                                                                    getHorizontalSize(
                                                                        10),
                                                                margin:
                                                                    getMargin(
                                                                        top: 1),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: ColorConstant
                                                                            .blueGray500))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 18,
                                                          top: 6,
                                                          bottom: 6),
                                                      child: Text("lbl_1".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRubikMedium16)),
                                                  CustomIconButton(
                                                      height: 32,
                                                      width: 32,
                                                      margin:
                                                          getMargin(left: 18),
                                                      variant: IconButtonVariant
                                                          .FillBluegray70001,
                                                      shape: IconButtonShape
                                                          .RoundedBorder6,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgPlus))
                                                ]))
                                          ]))
                                ])),
                        Spacer(),
                        Padding(
                            padding: getPadding(left: 24, right: 24),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Text("msg_product_quantity".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratRegular16Gray60003)),
                                  Padding(
                                      padding: getPadding(bottom: 1),
                                      child: Text("lbl_1".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtMontserratMedium16))
                                ])),
                        Padding(
                            padding: getPadding(left: 24, top: 17, right: 26),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1, bottom: 3),
                                      child: Text("lbl_total_price".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratRegular16Gray60003)),
                                  Text("lbl_959".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratSemiBold20Green500)
                                ])),
                        Container(
                            margin: getMargin(left: 24, top: 25, right: 24),
                            decoration: AppDecoration.fillBlack900.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder14),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                      padding: getPadding(
                                          left: 103, top: 17, bottom: 16),
                                      child: Text("lbl_checkout".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratSemiBold16Green500)),
                                  Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: getMargin(left: 90),
                                      color: ColorConstant.lightGreen900,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder14),
                                      child: Container(
                                          height: getSize(54),
                                          width: getSize(54),
                                          padding: getPadding(
                                              left: 17,
                                              top: 16,
                                              right: 17,
                                              bottom: 16),
                                          decoration: AppDecoration
                                              .fillLightgreen900
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder14),
                                          child: Stack(children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgCart,
                                                height: getSize(16),
                                                width: getSize(16),
                                                alignment: Alignment.bottomLeft)
                                          ])))
                                ])),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle17,
                            height: getVerticalSize(65),
                            width: getHorizontalSize(375),
                            margin: getMargin(top: 48))
                      ]))));
    });
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapBtnArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
