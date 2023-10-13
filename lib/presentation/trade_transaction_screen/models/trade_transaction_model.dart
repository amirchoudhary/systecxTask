// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'costsheet_item_model.dart';

/// This class defines the variables used in the [trade_transaction_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TradeTransactionModel extends Equatable {
  TradeTransactionModel({
    this.radioList = const [],
    this.costsheetItemList = const [],
  }) {}

  List<String> radioList;

  List<CostsheetItemModel> costsheetItemList;

  TradeTransactionModel copyWith({
    List<String>? radioList,
    List<CostsheetItemModel>? costsheetItemList,
  }) {
    return TradeTransactionModel(
      radioList: radioList ?? this.radioList,
      costsheetItemList: costsheetItemList ?? this.costsheetItemList,
    );
  }

  @override
  List<Object?> get props => [radioList, costsheetItemList];
}
