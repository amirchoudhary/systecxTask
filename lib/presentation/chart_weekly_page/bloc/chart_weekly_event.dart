// ignore_for_file: must_be_immutable

part of 'chart_weekly_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChartWeekly widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChartWeeklyEvent extends Equatable {}

/// Event that is dispatched when the ChartWeekly widget is first created.
class ChartWeeklyInitialEvent extends ChartWeeklyEvent {
  @override
  List<Object?> get props => [];
}
