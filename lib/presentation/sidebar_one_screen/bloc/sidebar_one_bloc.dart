import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:amir_s_application1/presentation/sidebar_one_screen/models/sidebar_one_model.dart';
part 'sidebar_one_event.dart';
part 'sidebar_one_state.dart';

/// A bloc that manages the state of a SidebarOne according to the event that is dispatched to it.
class SidebarOneBloc extends Bloc<SidebarOneEvent, SidebarOneState> {
  SidebarOneBloc(SidebarOneState initialState) : super(initialState) {
    on<SidebarOneInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<SidebarOneState> emit,
  ) {
    emit(state.copyWith(tradingNameEnUs: event.value));
  }

  _onInitialize(
    SidebarOneInitialEvent event,
    Emitter<SidebarOneState> emit,
  ) async {
    emit(state.copyWith(tradingNameEnUs: false));
  }
}
