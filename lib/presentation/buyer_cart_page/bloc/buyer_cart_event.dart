// ignore_for_file: must_be_immutable

part of 'buyer_cart_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BuyerCart widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BuyerCartEvent extends Equatable {}

/// Event that is dispatched when the BuyerCart widget is first created.
class BuyerCartInitialEvent extends BuyerCartEvent {
  @override
  List<Object?> get props => [];
}
