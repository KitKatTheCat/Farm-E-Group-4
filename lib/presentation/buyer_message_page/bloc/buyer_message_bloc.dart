import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/buyer_message_item_model.dart';
import 'package:dave_s_application3/presentation/buyer_message_page/models/buyer_message_model.dart';
part 'buyer_message_event.dart';
part 'buyer_message_state.dart';

/// A bloc that manages the state of a BuyerMessage according to the event that is dispatched to it.
class BuyerMessageBloc extends Bloc<BuyerMessageEvent, BuyerMessageState> {
  BuyerMessageBloc(BuyerMessageState initialState) : super(initialState) {
    on<BuyerMessageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BuyerMessageInitialEvent event,
    Emitter<BuyerMessageState> emit,
  ) async {
    emit(state.copyWith(
        buyerMessageModelObj: state.buyerMessageModelObj?.copyWith(
      buyerMessageItemList: fillBuyerMessageItemList(),
    )));
  }

  List<BuyerMessageItemModel> fillBuyerMessageItemList() {
    return List.generate(5, (index) => BuyerMessageItemModel());
  }
}
