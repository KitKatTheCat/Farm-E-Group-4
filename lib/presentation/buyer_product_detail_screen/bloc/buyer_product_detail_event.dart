// ignore_for_file: must_be_immutable

part of 'buyer_product_detail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BuyerProductDetail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BuyerProductDetailEvent extends Equatable {}

/// Event that is dispatched when the BuyerProductDetail widget is first created.
class BuyerProductDetailInitialEvent extends BuyerProductDetailEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends BuyerProductDetailEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
