// ignore_for_file: must_be_immutable

part of 'buyer_message_bloc.dart';

/// Represents the state of BuyerMessage in the application.
class BuyerMessageState extends Equatable {
  BuyerMessageState({this.buyerMessageModelObj});

  BuyerMessageModel? buyerMessageModelObj;

  @override
  List<Object?> get props => [
        buyerMessageModelObj,
      ];
  BuyerMessageState copyWith({BuyerMessageModel? buyerMessageModelObj}) {
    return BuyerMessageState(
      buyerMessageModelObj: buyerMessageModelObj ?? this.buyerMessageModelObj,
    );
  }
}
