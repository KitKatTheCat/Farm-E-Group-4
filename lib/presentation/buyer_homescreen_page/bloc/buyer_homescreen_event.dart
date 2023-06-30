// ignore_for_file: must_be_immutable

part of 'buyer_homescreen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BuyerHomescreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BuyerHomescreenEvent extends Equatable {}

/// Event that is dispatched when the BuyerHomescreen widget is first created.
class BuyerHomescreenInitialEvent extends BuyerHomescreenEvent {
  @override
  List<Object?> get props => [];
}
