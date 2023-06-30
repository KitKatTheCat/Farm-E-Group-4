// ignore_for_file: must_be_immutable

part of 'buyer_homescreen_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BuyerHomescreenContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BuyerHomescreenContainerEvent extends Equatable {}

/// Event that is dispatched when the BuyerHomescreenContainer widget is first created.
class BuyerHomescreenContainerInitialEvent
    extends BuyerHomescreenContainerEvent {
  @override
  List<Object?> get props => [];
}
