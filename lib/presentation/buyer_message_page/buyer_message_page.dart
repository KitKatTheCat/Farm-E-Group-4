import '../buyer_message_page/widgets/buyer_message_item_widget.dart';
import 'bloc/buyer_message_bloc.dart';
import 'models/buyer_message_item_model.dart';
import 'models/buyer_message_model.dart';
import 'package:dave_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BuyerMessagePage extends StatelessWidget {
  const BuyerMessagePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<BuyerMessageBloc>(
      create: (context) => BuyerMessageBloc(BuyerMessageState(
        buyerMessageModelObj: BuyerMessageModel(),
      ))
        ..add(BuyerMessageInitialEvent()),
      child: BuyerMessagePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: getPadding(
                  top: 11,
                  bottom: 11,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img33086948911403,
                      height: getVerticalSize(
                        50,
                      ),
                      width: getHorizontalSize(
                        52,
                      ),
                      margin: getMargin(
                        left: 18,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 15,
                        top: 37,
                      ),
                      child: Text(
                        "lbl_messages".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtMontserratRomanMedium16Gray900.copyWith(
                          letterSpacing: getHorizontalSize(
                            1.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: getPadding(
                          right: 9,
                        ),
                        child: BlocSelector<BuyerMessageBloc, BuyerMessageState,
                            BuyerMessageModel?>(
                          selector: (state) => state.buyerMessageModelObj,
                          builder: (context, buyerMessageModelObj) {
                            return ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    14,
                                  ),
                                );
                              },
                              itemCount: buyerMessageModelObj
                                      ?.buyerMessageItemList.length ??
                                  0,
                              itemBuilder: (context, index) {
                                BuyerMessageItemModel model =
                                    buyerMessageModelObj
                                            ?.buyerMessageItemList[index] ??
                                        BuyerMessageItemModel();
                                return BuyerMessageItemWidget(
                                  model,
                                );
                              },
                            );
                          },
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
    );
  }
}
