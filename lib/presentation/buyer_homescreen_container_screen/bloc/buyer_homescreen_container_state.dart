// ignore_for_file: must_be_immutable

part of 'buyer_homescreen_container_bloc.dart';

/// Represents the state of BuyerHomescreenContainer in the application.
class BuyerHomescreenContainerState extends Equatable {
  BuyerHomescreenContainerState({this.buyerHomescreenContainerModelObj});

  BuyerHomescreenContainerModel? buyerHomescreenContainerModelObj;

  @override
  List<Object?> get props => [
        buyerHomescreenContainerModelObj,
      ];
  BuyerHomescreenContainerState copyWith(
      {BuyerHomescreenContainerModel? buyerHomescreenContainerModelObj}) {
    return BuyerHomescreenContainerState(
      buyerHomescreenContainerModelObj: buyerHomescreenContainerModelObj ??
          this.buyerHomescreenContainerModelObj,
    );
  }
}
