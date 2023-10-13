// ignore_for_file: must_be_immutable

part of 'export_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExportTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExportTwoEvent extends Equatable {}

/// Event that is dispatched when the ExportTwo widget is first created.
class ExportTwoInitialEvent extends ExportTwoEvent {
  @override
  List<Object?> get props => [];
}
