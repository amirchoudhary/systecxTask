// ignore_for_file: must_be_immutable

part of 'chart_weekly_tab_container_bloc.dart';

/// Represents the state of ChartWeeklyTabContainer in the application.
class ChartWeeklyTabContainerState extends Equatable {
  ChartWeeklyTabContainerState({this.chartWeeklyTabContainerModelObj});

  ChartWeeklyTabContainerModel? chartWeeklyTabContainerModelObj;

  @override
  List<Object?> get props => [
        chartWeeklyTabContainerModelObj,
      ];
  ChartWeeklyTabContainerState copyWith(
      {ChartWeeklyTabContainerModel? chartWeeklyTabContainerModelObj}) {
    return ChartWeeklyTabContainerState(
      chartWeeklyTabContainerModelObj: chartWeeklyTabContainerModelObj ??
          this.chartWeeklyTabContainerModelObj,
    );
  }
}
