import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dave_s_application3/presentation/buyer_cart_page/models/buyer_cart_model.dart';
part 'buyer_cart_event.dart';
part 'buyer_cart_state.dart';

/// A bloc that manages the state of a BuyerCart according to the event that is dispatched to it.
class BuyerCartBloc extends Bloc<BuyerCartEvent, BuyerCartState> {
  BuyerCartBloc(BuyerCartState initialState) : super(initialState) {
    on<BuyerCartInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BuyerCartInitialEvent event,
    Emitter<BuyerCartState> emit,
  ) async {}
}
