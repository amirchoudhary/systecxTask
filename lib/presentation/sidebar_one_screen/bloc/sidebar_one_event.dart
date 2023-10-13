// ignore_for_file: must_be_immutable

part of 'sidebar_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SidebarOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SidebarOneEvent extends Equatable {}

/// Event that is dispatched when the SidebarOne widget is first created.
class SidebarOneInitialEvent extends SidebarOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends SidebarOneEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
