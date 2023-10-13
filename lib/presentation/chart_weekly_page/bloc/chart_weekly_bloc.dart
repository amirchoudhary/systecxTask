import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:amir_s_application1/presentation/chart_weekly_page/models/chart_weekly_model.dart';
part 'chart_weekly_event.dart';
part 'chart_weekly_state.dart';

/// A bloc that manages the state of a ChartWeekly according to the event that is dispatched to it.
class ChartWeeklyBloc extends Bloc<ChartWeeklyEvent, ChartWeeklyState> {
  ChartWeeklyBloc(ChartWeeklyState initialState) : super(initialState) {
    on<ChartWeeklyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChartWeeklyInitialEvent event,
    Emitter<ChartWeeklyState> emit,
  ) async {}
}
