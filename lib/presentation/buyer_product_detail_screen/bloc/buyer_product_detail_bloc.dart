import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dave_s_application3/presentation/buyer_product_detail_screen/models/buyer_product_detail_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'buyer_product_detail_event.dart';
part 'buyer_product_detail_state.dart';

/// A bloc that manages the state of a BuyerProductDetail according to the event that is dispatched to it.
class BuyerProductDetailBloc
    extends Bloc<BuyerProductDetailEvent, BuyerProductDetailState>
    with CodeAutoFill {
  BuyerProductDetailBloc(BuyerProductDetailState initialState)
      : super(initialState) {
    on<BuyerProductDetailInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<BuyerProductDetailState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    BuyerProductDetailInitialEvent event,
    Emitter<BuyerProductDetailState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
