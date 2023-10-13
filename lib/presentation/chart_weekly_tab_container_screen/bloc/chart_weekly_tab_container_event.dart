// ignore_for_file: must_be_immutable

part of 'chart_weekly_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChartWeeklyTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChartWeeklyTabContainerEvent extends Equatable {}

/// Event that is dispatched when the ChartWeeklyTabContainer widget is first created.
class ChartWeeklyTabContainerInitialEvent extends ChartWeeklyTabContainerEvent {
  @override
  List<Object?> get props => [];
}
