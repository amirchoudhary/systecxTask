import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/costsheet_item_model.dart';
import 'package:amir_s_application1/presentation/trade_transaction_screen/models/trade_transaction_model.dart';
part 'trade_transaction_event.dart';
part 'trade_transaction_state.dart';

/// A bloc that manages the state of a TradeTransaction according to the event that is dispatched to it.
class TradeTransactionBloc
    extends Bloc<TradeTransactionEvent, TradeTransactionState> {
  TradeTransactionBloc(TradeTransactionState initialState)
      : super(initialState) {
    on<TradeTransactionInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
    on<ChangeCheckBox3Event>(_changeCheckBox3);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<TradeTransactionState> emit,
  ) {
    emit(state.copyWith(meetings: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<TradeTransactionState> emit,
  ) {
    emit(state.copyWith(approvals: event.value));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<TradeTransactionState> emit,
  ) {
    emit(state.copyWith(tasks: event.value));
  }

  _changeCheckBox3(
    ChangeCheckBox3Event event,
    Emitter<TradeTransactionState> emit,
  ) {
    emit(state.copyWith(tourreports: event.value));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<TradeTransactionState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<TradeTransactionState> emit,
  ) {
    emit(state.copyWith(radioGroup1: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_updated", "lbl_updated", "lbl_updated", "lbl_updated"];
  }

  List<CostsheetItemModel> fillCostsheetItemList() {
    return List.generate(4, (index) => CostsheetItemModel());
  }

  _onInitialize(
    TradeTransactionInitialEvent event,
    Emitter<TradeTransactionState> emit,
  ) async {
    emit(state.copyWith(
        paymentmodeController: TextEditingController(),
        meetings: false,
        approvals: false,
        tasks: false,
        tourreports: false,
        radioGroup: "",
        radioGroup1: ""));
    emit(state.copyWith(
        tradeTransactionModelObj: state.tradeTransactionModelObj?.copyWith(
            radioList: fillRadioList(),
            costsheetItemList: fillCostsheetItemList())));
  }
}
