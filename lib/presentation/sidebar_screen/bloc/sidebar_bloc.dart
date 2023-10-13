import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:amir_s_application1/presentation/sidebar_screen/models/sidebar_model.dart';
part 'sidebar_event.dart';
part 'sidebar_state.dart';

/// A bloc that manages the state of a Sidebar according to the event that is dispatched to it.
class SidebarBloc extends Bloc<SidebarEvent, SidebarState> {
  SidebarBloc(SidebarState initialState) : super(initialState) {
    on<SidebarInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<SidebarState> emit,
  ) {
    emit(state.copyWith(tradingNameEnUs: event.value));
  }

  _onInitialize(
    SidebarInitialEvent event,
    Emitter<SidebarState> emit,
  ) async {
    emit(state.copyWith(tradingNameEnUs: false));
  }
}
