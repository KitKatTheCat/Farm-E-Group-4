// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'buyer_item_model.dart';

/// This class defines the variables used in the [buyer_homescreen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BuyerHomescreenModel extends Equatable {
  BuyerHomescreenModel({this.buyerItemList = const []});

  List<BuyerItemModel> buyerItemList;

  BuyerHomescreenModel copyWith({List<BuyerItemModel>? buyerItemList}) {
    return BuyerHomescreenModel(
      buyerItemList: buyerItemList ?? this.buyerItemList,
    );
  }

  @override
  List<Object?> get props => [buyerItemList];
}
