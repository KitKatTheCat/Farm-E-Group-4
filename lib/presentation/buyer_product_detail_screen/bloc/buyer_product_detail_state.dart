// ignore_for_file: must_be_immutable

part of 'buyer_product_detail_bloc.dart';

/// Represents the state of BuyerProductDetail in the application.
class BuyerProductDetailState extends Equatable {
  BuyerProductDetailState({
    this.otpController,
    this.buyerProductDetailModelObj,
  });

  TextEditingController? otpController;

  BuyerProductDetailModel? buyerProductDetailModelObj;

  @override
  List<Object?> get props => [
        otpController,
        buyerProductDetailModelObj,
      ];
  BuyerProductDetailState copyWith({
    TextEditingController? otpController,
    BuyerProductDetailModel? buyerProductDetailModelObj,
  }) {
    return BuyerProductDetailState(
      otpController: otpController ?? this.otpController,
      buyerProductDetailModelObj:
          buyerProductDetailModelObj ?? this.buyerProductDetailModelObj,
    );
  }
}
