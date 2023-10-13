// ignore_for_file: must_be_immutable

part of 'dashboard_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Dashboard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DashboardEvent extends Equatable {}

/// Event that is dispatched when the Dashboard widget is first created.
class DashboardInitialEvent extends DashboardEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends DashboardEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends DashboardEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox2Event extends DashboardEvent {
  ChangeCheckBox2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox3Event extends DashboardEvent {
  ChangeCheckBox3Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
