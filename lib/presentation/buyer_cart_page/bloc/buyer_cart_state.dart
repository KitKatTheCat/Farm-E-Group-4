// ignore_for_file: must_be_immutable

part of 'buyer_cart_bloc.dart';

/// Represents the state of BuyerCart in the application.
class BuyerCartState extends Equatable {
  BuyerCartState({this.buyerCartModelObj});

  BuyerCartModel? buyerCartModelObj;

  @override
  List<Object?> get props => [
        buyerCartModelObj,
      ];
  BuyerCartState copyWith({BuyerCartModel? buyerCartModelObj}) {
    return BuyerCartState(
      buyerCartModelObj: buyerCartModelObj ?? this.buyerCartModelObj,
    );
  }
}
