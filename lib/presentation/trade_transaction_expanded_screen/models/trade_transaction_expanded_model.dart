// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'costsheet1_item_model.dart';

/// This class defines the variables used in the [trade_transaction_expanded_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TradeTransactionExpandedModel extends Equatable {
  TradeTransactionExpandedModel({
    this.radioList = const [],
    this.costsheet1ItemList = const [],
  }) {}

  List<String> radioList;

  List<Costsheet1ItemModel> costsheet1ItemList;

  TradeTransactionExpandedModel copyWith({
    List<String>? radioList,
    List<Costsheet1ItemModel>? costsheet1ItemList,
  }) {
    return TradeTransactionExpandedModel(
      radioList: radioList ?? this.radioList,
      costsheet1ItemList: costsheet1ItemList ?? this.costsheet1ItemList,
    );
  }

  @override
  List<Object?> get props => [radioList, costsheet1ItemList];
}
