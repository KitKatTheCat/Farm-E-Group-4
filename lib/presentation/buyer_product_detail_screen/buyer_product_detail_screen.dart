import 'bloc/buyer_product_detail_bloc.dart';
import 'models/buyer_product_detail_model.dart';
import 'package:dave_s_application3/core/app_export.dart';
import 'package:dave_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:dave_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class BuyerProductDetailScreen extends StatelessWidget {
  const BuyerProductDetailScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BuyerProductDetailBloc>(
        create: (context) => BuyerProductDetailBloc(BuyerProductDetailState(
            buyerProductDetailModelObj: BuyerProductDetailModel()))
          ..add(BuyerProductDetailInitialEvent()),
        child: BuyerProductDetailScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: getHorizontalSize(375),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getSize(375),
                          width: getSize(375),
                          decoration: AppDecoration.fillGray200,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage10375x372,
                                height: getVerticalSize(375),
                                width: getHorizontalSize(372),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(left: 24, right: 24),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(42),
                                              leadingWidth: 66,
                                              leading: CustomIconButton(
                                                  height: 42,
                                                  width: 42,
                                                  margin: getMargin(left: 24),
                                                  padding: IconButtonPadding
                                                      .PaddingAll14,
                                                  onTap: () {
                                                    onTapBtnArrowleft(context);
                                                  },
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowleft)),
                                              title: Padding(
                                                  padding: getPadding(left: 16),
                                                  child: Text(
                                                      "lbl_land_fertilizer".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRegular16WhiteA700)),
                                              actions: [
                                                CustomIconButton(
                                                    height: 42,
                                                    width: 42,
                                                    margin: getMargin(
                                                        left: 24, right: 24),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgSearch))
                                              ]),
                                          CustomIconButton(
                                              height: 42,
                                              width: 42,
                                              margin: getMargin(top: 12),
                                              alignment: Alignment.centerRight,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgFavoriteBlueGray400)),
                                          Padding(
                                              padding: getPadding(top: 173),
                                              child: BlocSelector<
                                                      BuyerProductDetailBloc,
                                                      BuyerProductDetailState,
                                                      TextEditingController?>(
                                                  selector: (state) =>
                                                      state.otpController,
                                                  builder:
                                                      (context, otpController) {
                                                    return PinCodeTextField(
                                                        appContext: context,
                                                        controller:
                                                            otpController,
                                                        length: 4,
                                                        obscureText: false,
                                                        obscuringCharacter: '*',
                                                        keyboardType: TextInputType
                                                            .number,
                                                        autoDismissKeyboard:
                                                            true,
                                                        enableActiveFill: true,
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .digitsOnly
                                                        ],
                                                        onChanged: (value) {
                                                          otpController?.text =
                                                              value;
                                                        },
                                                        pinTheme: PinTheme(
                                                            fieldHeight:
                                                                getHorizontalSize(
                                                                    50),
                                                            fieldWidth:
                                                                getHorizontalSize(
                                                                    50),
                                                            shape:
                                                                PinCodeFieldShape
                                                                    .box,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        8)),
                                                            selectedFillColor:
                                                                ColorConstant
                                                                    .gray30001,
                                                            activeFillColor:
                                                                ColorConstant
                                                                    .gray30001,
                                                            inactiveFillColor:
                                                                ColorConstant
                                                                    .gray30001,
                                                            inactiveColor:
                                                                ColorConstant.fromHex(
                                                                    "#1212121D"),
                                                            selectedColor:
                                                                ColorConstant.fromHex(
                                                                    "#1212121D"),
                                                            activeColor:
                                                                ColorConstant.fromHex("#1212121D")));
                                                  }))
                                        ])))
                          ])),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 25),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 24),
                                        child: Text("lbl_land_fertilizer".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratMedium24)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 24, top: 52, right: 24),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgStar,
                                                      height:
                                                          getVerticalSize(13),
                                                      width:
                                                          getHorizontalSize(14),
                                                      margin:
                                                          getMargin(top: 20)),
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgStar,
                                                      height:
                                                          getVerticalSize(13),
                                                      width:
                                                          getHorizontalSize(14),
                                                      margin: getMargin(
                                                          left: 8, top: 20)),
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgStar,
                                                      height:
                                                          getVerticalSize(13),
                                                      width:
                                                          getHorizontalSize(14),
                                                      margin: getMargin(
                                                          left: 8, top: 20)),
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgStar,
                                                      height:
                                                          getVerticalSize(13),
                                                      width:
                                                          getHorizontalSize(14),
                                                      margin: getMargin(
                                                          left: 8, top: 20)),
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgStar,
                                                      height:
                                                          getVerticalSize(13),
                                                      width:
                                                          getHorizontalSize(14),
                                                      margin: getMargin(
                                                          left: 8, top: 20)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 12, bottom: 14),
                                                      child: Text("lbl_5_0".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratRegular16Amber300)),
                                                  Spacer(),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_124_reviews"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratRegular16Bluegray300),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowright,
                                                                height:
                                                                    getVerticalSize(
                                                                        10),
                                                                width:
                                                                    getHorizontalSize(
                                                                        5),
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                margin:
                                                                    getMargin(
                                                                        top: 2))
                                                          ]))
                                                ]))),
                                    Padding(
                                        padding: getPadding(left: 24, top: 17),
                                        child: Text("lbl_description".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratMedium20)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: getHorizontalSize(325),
                                            margin: getMargin(
                                                left: 24, top: 17, right: 25),
                                            child: Text(
                                                "msg_for_now_the_lenovo".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratLight15))),
                                    Container(
                                        height: getVerticalSize(262),
                                        width: getHorizontalSize(375),
                                        margin: getMargin(top: 72),
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 24, right: 24),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        right:
                                                                            71),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_processor"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtMontserratRegular15),
                                                                      Text(
                                                                          "lbl_core_i7_10234"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtMontserratRegular15)
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            11),
                                                                child: Divider(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    thickness:
                                                                        getVerticalSize(
                                                                            1),
                                                                    color: ColorConstant
                                                                        .gray30002)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 14,
                                                                        right:
                                                                            73),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl_grapich".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRubikRegular15)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              bottom:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl_nvidia_mx250".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRubikRegular15))
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            10),
                                                                child: Divider(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    thickness:
                                                                        getVerticalSize(
                                                                            1),
                                                                    color: ColorConstant
                                                                        .gray30003)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 15,
                                                                        right:
                                                                            90),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_memory"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtRubikRegular15),
                                                                      Text(
                                                                          "lbl_16gb_ddr4"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtRubikRegular15)
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            12),
                                                                child: Divider(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    thickness:
                                                                        getVerticalSize(
                                                                            1),
                                                                    color: ColorConstant
                                                                        .gray30003)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 15,
                                                                        right:
                                                                            65),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_display"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtRubikRegular15),
                                                                      Text(
                                                                          "lbl_ips_13_inc_fhd"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtRubikRegular15)
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            12),
                                                                child: Divider(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    thickness:
                                                                        getVerticalSize(
                                                                            1),
                                                                    color: ColorConstant
                                                                        .gray30003)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 15,
                                                                        right:
                                                                            71),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_storage"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtRubikRegular15),
                                                                      Text(
                                                                          "lbl_1tb_ssd_nvmi"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtRubikRegular15)
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            12),
                                                                child: Divider(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    thickness:
                                                                        getVerticalSize(
                                                                            1),
                                                                    color: ColorConstant
                                                                        .gray30003)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 15,
                                                                        right:
                                                                            80),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  3),
                                                                          child: Text(
                                                                              "lbl_os".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRubikRegular15)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              bottom:
                                                                                  3),
                                                                          child: Text(
                                                                              "lbl_win_10_home".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRubikRegular15))
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 9),
                                                                child: Divider(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    thickness:
                                                                        getVerticalSize(
                                                                            1),
                                                                    color: ColorConstant
                                                                        .gray30003))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Container(
                                                      margin: getMargin(
                                                          bottom: 160),
                                                      padding: getPadding(
                                                          top: 24, bottom: 24),
                                                      decoration: AppDecoration
                                                          .outlineBlack9000c,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        top: 11,
                                                                        bottom:
                                                                            11),
                                                                padding:
                                                                    getPadding(
                                                                        left: 8,
                                                                        top: 15,
                                                                        right:
                                                                            8,
                                                                        bottom:
                                                                            15),
                                                                decoration: AppDecoration
                                                                    .fillGray300
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder4),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Container(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          width: getHorizontalSize(
                                                                              14),
                                                                          margin: getMargin(
                                                                              top:
                                                                                  1),
                                                                          decoration:
                                                                              BoxDecoration(color: ColorConstant.blueGray500))
                                                                    ])),
                                                            Padding(
                                                                padding: getPadding(
                                                                    top: 18,
                                                                    bottom: 15),
                                                                child: Text(
                                                                    "lbl_1".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratMedium16)),
                                                            CustomIconButton(
                                                                height: 32,
                                                                width: 32,
                                                                margin:
                                                                    getMargin(
                                                                        top: 11,
                                                                        bottom:
                                                                            11),
                                                                variant:
                                                                    IconButtonVariant
                                                                        .FillBluegray70001,
                                                                shape: IconButtonShape
                                                                    .RoundedBorder6,
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgPlus)),
                                                            Container(
                                                                decoration: AppDecoration
                                                                    .fillBluegray90001
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder14),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  15,
                                                                              bottom:
                                                                                  13),
                                                                          child: Text(
                                                                              "lbl_959".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratSemiBold20Green500)),
                                                                      Card(
                                                                          clipBehavior: Clip
                                                                              .antiAlias,
                                                                          elevation:
                                                                              0,
                                                                          margin: getMargin(
                                                                              left:
                                                                                  36),
                                                                          color: ColorConstant
                                                                              .blueGray700,
                                                                          shape:
                                                                              RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder14),
                                                                          child: Container(
                                                                              height: getSize(54),
                                                                              width: getSize(54),
                                                                              padding: getPadding(left: 20, top: 18, right: 20, bottom: 18),
                                                                              decoration: AppDecoration.fillBluegray700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
                                                                              child: Stack(children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgFolder, height: getVerticalSize(16), width: getHorizontalSize(13), alignment: Alignment.topLeft)
                                                                              ])))
                                                                    ]))
                                                          ])))
                                            ]))
                                  ])))
                    ]))));
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
