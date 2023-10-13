import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:amir_s_application1/presentation/dashboard_screen/models/dashboard_model.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

/// A bloc that manages the state of a Dashboard according to the event that is dispatched to it.
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(DashboardState initialState) : super(initialState) {
    on<DashboardInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
    on<ChangeCheckBox3Event>(_changeCheckBox3);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<DashboardState> emit,
  ) {
    emit(state.copyWith(meetingsvalue: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<DashboardState> emit,
  ) {
    emit(state.copyWith(approvalsvalue: event.value));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<DashboardState> emit,
  ) {
    emit(state.copyWith(tasksvalue: event.value));
  }

  _changeCheckBox3(
    ChangeCheckBox3Event event,
    Emitter<DashboardState> emit,
  ) {
    emit(state.copyWith(tourReports: event.value));
  }

  _onInitialize(
    DashboardInitialEvent event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(
        meetingsvalue: false,
        approvalsvalue: false,
        tasksvalue: false,
        tourReports: false));
  }
}
