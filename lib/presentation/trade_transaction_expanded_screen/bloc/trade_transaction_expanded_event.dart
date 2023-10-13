// ignore_for_file: must_be_immutable

part of 'trade_transaction_expanded_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TradeTransactionExpanded widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TradeTransactionExpandedEvent extends Equatable {}

/// Event that is dispatched when the TradeTransactionExpanded widget is first created.
class TradeTransactionExpandedInitialEvent
    extends TradeTransactionExpandedEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends TradeTransactionExpandedEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends TradeTransactionExpandedEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox2Event extends TradeTransactionExpandedEvent {
  ChangeCheckBox2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox3Event extends TradeTransactionExpandedEvent {
  ChangeCheckBox3Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends TradeTransactionExpandedEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends TradeTransactionExpandedEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
