import '../buyer_homescreen_page/widgets/buyer_item_widget.dart';
import 'bloc/buyer_homescreen_bloc.dart';
import 'models/buyer_homescreen_model.dart';
import 'models/buyer_item_model.dart';
import 'package:dave_s_application3/core/app_export.dart';
import 'package:dave_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:dave_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BuyerHomescreenPage extends StatelessWidget {
  const BuyerHomescreenPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<BuyerHomescreenBloc>(
      create: (context) => BuyerHomescreenBloc(BuyerHomescreenState(
        buyerHomescreenModelObj: BuyerHomescreenModel(),
      ))
        ..add(BuyerHomescreenInitialEvent()),
      child: BuyerHomescreenPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            64,
          ),
          leadingWidth: 70,
          leading: AppbarImage(
            height: getVerticalSize(
              50,
            ),
            width: getHorizontalSize(
              52,
            ),
            imagePath: ImageConstant.img33086948911403,
            margin: getMargin(
              left: 18,
              top: 3,
              bottom: 3,
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                28,
              ),
              width: getHorizontalSize(
                25,
              ),
              imagePath: ImageConstant.imgImage1,
              margin: getMargin(
                left: 25,
                top: 9,
                right: 19,
              ),
            ),
            AppbarImage(
              height: getSize(
                22,
              ),
              width: getSize(
                22,
              ),
              imagePath: ImageConstant.imgImage3,
              margin: getMargin(
                left: 22,
                top: 12,
                right: 44,
                bottom: 3,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 18,
            bottom: 18,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 22,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_hello".tr,
                        style: TextStyle(
                          color: ColorConstant.blueGray90001,
                          fontSize: getFontSize(
                            32,
                          ),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: " ",
                        style: TextStyle(
                          color: ColorConstant.blueGray90001,
                          fontSize: getFontSize(
                            32,
                          ),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "lbl_customer".tr,
                        style: TextStyle(
                          color: ColorConstant.blueGray90001,
                          fontSize: getFontSize(
                            32,
                          ),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                ),
                child: Text(
                  "msg_good_morning_welcome".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratRegular16,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: getPadding(
                    left: 24,
                    top: 30,
                  ),
                  child: IntrinsicWidth(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            padding: getPadding(
                              left: 16,
                              top: 32,
                              right: 16,
                              bottom: 32,
                            ),
                            decoration: AppDecoration
                                .gradientBlack90075Black90000
                                .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: getMargin(
                                    top: 36,
                                  ),
                                  decoration:
                                      AppDecoration.txtOutlineBlack90014,
                                  child: Text(
                                    "msg_premium_fertilizer".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratSemiBold16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: getMargin(
                              left: 24,
                            ),
                            padding: getPadding(
                              left: 16,
                              top: 32,
                              right: 16,
                              bottom: 32,
                            ),
                            decoration: AppDecoration
                                .gradientBlack9006bBlack90000
                                .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: getMargin(
                                    top: 36,
                                  ),
                                  decoration:
                                      AppDecoration.txtOutlineBlack90014,
                                  child: Text(
                                    "lbl_crops".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratSemiBold16,
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
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 84,
                ),
                child: Text(
                  "lbl_for_you".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratSemiBold20,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 33,
                  right: 39,
                ),
                child: BlocSelector<BuyerHomescreenBloc, BuyerHomescreenState,
                    BuyerHomescreenModel?>(
                  selector: (state) => state.buyerHomescreenModelObj,
                  builder: (context, buyerHomescreenModelObj) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          height: getVerticalSize(
                            16,
                          ),
                        );
                      },
                      itemCount:
                          buyerHomescreenModelObj?.buyerItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        BuyerItemModel model =
                            buyerHomescreenModelObj?.buyerItemList[index] ??
                                BuyerItemModel();
                        return BuyerItemWidget(
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
    );
  }
}
