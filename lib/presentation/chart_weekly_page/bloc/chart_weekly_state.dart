// ignore_for_file: must_be_immutable

part of 'chart_weekly_bloc.dart';

/// Represents the state of ChartWeekly in the application.
class ChartWeeklyState extends Equatable {
  ChartWeeklyState({this.chartWeeklyModelObj});

  ChartWeeklyModel? chartWeeklyModelObj;

  @override
  List<Object?> get props => [
        chartWeeklyModelObj,
      ];
  ChartWeeklyState copyWith({ChartWeeklyModel? chartWeeklyModelObj}) {
    return ChartWeeklyState(
      chartWeeklyModelObj: chartWeeklyModelObj ?? this.chartWeeklyModelObj,
    );
  }
}
