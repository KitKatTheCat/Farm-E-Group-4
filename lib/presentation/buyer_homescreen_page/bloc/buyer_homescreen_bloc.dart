import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/buyer_item_model.dart';
import 'package:dave_s_application3/presentation/buyer_homescreen_page/models/buyer_homescreen_model.dart';
part 'buyer_homescreen_event.dart';
part 'buyer_homescreen_state.dart';

/// A bloc that manages the state of a BuyerHomescreen according to the event that is dispatched to it.
class BuyerHomescreenBloc
    extends Bloc<BuyerHomescreenEvent, BuyerHomescreenState> {
  BuyerHomescreenBloc(BuyerHomescreenState initialState) : super(initialState) {
    on<BuyerHomescreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BuyerHomescreenInitialEvent event,
    Emitter<BuyerHomescreenState> emit,
  ) async {
    emit(state.copyWith(
        buyerHomescreenModelObj: state.buyerHomescreenModelObj?.copyWith(
      buyerItemList: fillBuyerItemList(),
    )));
  }

  List<BuyerItemModel> fillBuyerItemList() {
    return List.generate(3, (index) => BuyerItemModel());
  }
}
