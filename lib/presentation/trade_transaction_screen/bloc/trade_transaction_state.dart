// ignore_for_file: must_be_immutable

part of 'trade_transaction_bloc.dart';

/// Represents the state of TradeTransaction in the application.
class TradeTransactionState extends Equatable {
  TradeTransactionState({
    this.paymentmodeController,
    this.meetings = false,
    this.approvals = false,
    this.tasks = false,
    this.tourreports = false,
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.tradeTransactionModelObj,
  });

  TextEditingController? paymentmodeController;

  TradeTransactionModel? tradeTransactionModelObj;

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
        tradeTransactionModelObj,
      ];
  TradeTransactionState copyWith({
    TextEditingController? paymentmodeController,
    bool? meetings,
    bool? approvals,
    bool? tasks,
    bool? tourreports,
    String? radioGroup,
    String? radioGroup1,
    TradeTransactionModel? tradeTransactionModelObj,
  }) {
    return TradeTransactionState(
      paymentmodeController:
          paymentmodeController ?? this.paymentmodeController,
      meetings: meetings ?? this.meetings,
      approvals: approvals ?? this.approvals,
      tasks: tasks ?? this.tasks,
      tourreports: tourreports ?? this.tourreports,
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      tradeTransactionModelObj:
          tradeTransactionModelObj ?? this.tradeTransactionModelObj,
    );
  }
}
