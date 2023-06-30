// ignore_for_file: must_be_immutable

part of 'buyer_homescreen_bloc.dart';

/// Represents the state of BuyerHomescreen in the application.
class BuyerHomescreenState extends Equatable {
  BuyerHomescreenState({this.buyerHomescreenModelObj});

  BuyerHomescreenModel? buyerHomescreenModelObj;

  @override
  List<Object?> get props => [
        buyerHomescreenModelObj,
      ];
  BuyerHomescreenState copyWith(
      {BuyerHomescreenModel? buyerHomescreenModelObj}) {
    return BuyerHomescreenState(
      buyerHomescreenModelObj:
          buyerHomescreenModelObj ?? this.buyerHomescreenModelObj,
    );
  }
}
