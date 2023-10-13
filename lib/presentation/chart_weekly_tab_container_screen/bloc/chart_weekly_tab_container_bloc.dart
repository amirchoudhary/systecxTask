import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:amir_s_application1/presentation/chart_weekly_tab_container_screen/models/chart_weekly_tab_container_model.dart';
part 'chart_weekly_tab_container_event.dart';
part 'chart_weekly_tab_container_state.dart';

/// A bloc that manages the state of a ChartWeeklyTabContainer according to the event that is dispatched to it.
class ChartWeeklyTabContainerBloc
    extends Bloc<ChartWeeklyTabContainerEvent, ChartWeeklyTabContainerState> {
  ChartWeeklyTabContainerBloc(ChartWeeklyTabContainerState initialState)
      : super(initialState) {
    on<ChartWeeklyTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChartWeeklyTabContainerInitialEvent event,
    Emitter<ChartWeeklyTabContainerState> emit,
  ) async {}
}
