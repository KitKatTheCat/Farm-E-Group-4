// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'buyer_message_item_model.dart';

/// This class defines the variables used in the [buyer_message_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BuyerMessageModel extends Equatable {
  BuyerMessageModel({this.buyerMessageItemList = const []});

  List<BuyerMessageItemModel> buyerMessageItemList;

  BuyerMessageModel copyWith(
      {List<BuyerMessageItemModel>? buyerMessageItemList}) {
    return BuyerMessageModel(
      buyerMessageItemList: buyerMessageItemList ?? this.buyerMessageItemList,
    );
  }

  @override
  List<Object?> get props => [buyerMessageItemList];
}
