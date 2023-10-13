// ignore_for_file: must_be_immutable

part of 'trade_transaction_expanded_bloc.dart';

/// Represents the state of TradeTransactionExpanded in the application.
class TradeTransactionExpandedState extends Equatable {
  TradeTransactionExpandedState({
    this.paymentmodeController,
    this.meetings = false,
    this.approvals = false,
    this.tasks = false,
    this.tourreports = false,
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.tradeTransactionExpandedModelObj,
  });

  TextEditingController? paymentmodeController;

  TradeTransactionExpandedModel? tradeTransactionExpandedModelObj;

  bool meetings;

  bool approvals;

  bool tasks;

  bool tourreports;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        paymentmodeController,
        meetings,
        approvals,
        tasks,
        tourreports,
        radioGroup,
        radioGroup1,
        tradeTransactionExpandedModelObj,
      ];
  TradeTransactionExpandedState copyWith({
    TextEditingController? paymentmodeController,
    bool? meetings,
    bool? approvals,
    bool? tasks,
    bool? tourreports,
    String? radioGroup,
    String? radioGroup1,
    TradeTransactionExpandedModel? tradeTransactionExpandedModelObj,
  }) {
    return TradeTransactionExpandedState(
      paymentmodeController:
          paymentmodeController ?? this.paymentmodeController,
      meetings: meetings ?? this.meetings,
      approvals: approvals ?? this.approvals,
      tasks: tasks ?? this.tasks,
      tourreports: tourreports ?? this.tourreports,
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      tradeTransactionExpandedModelObj: tradeTransactionExpandedModelObj ??
          this.tradeTransactionExpandedModelObj,
    );
  }
}
