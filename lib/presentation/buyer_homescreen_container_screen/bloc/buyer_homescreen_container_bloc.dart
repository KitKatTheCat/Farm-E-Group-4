import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dave_s_application3/presentation/buyer_homescreen_container_screen/models/buyer_homescreen_container_model.dart';
part 'buyer_homescreen_container_event.dart';
part 'buyer_homescreen_container_state.dart';

/// A bloc that manages the state of a BuyerHomescreenContainer according to the event that is dispatched to it.
class BuyerHomescreenContainerBloc
    extends Bloc<BuyerHomescreenContainerEvent, BuyerHomescreenContainerState> {
  BuyerHomescreenContainerBloc(BuyerHomescreenContainerState initialState)
      : super(initialState) {
    on<BuyerHomescreenContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BuyerHomescreenContainerInitialEvent event,
    Emitter<BuyerHomescreenContainerState> emit,
  ) async {}
}
