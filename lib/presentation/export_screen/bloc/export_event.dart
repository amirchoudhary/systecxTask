// ignore_for_file: must_be_immutable

part of 'export_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Export widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExportEvent extends Equatable {}

/// Event that is dispatched when the Export widget is first created.
class ExportInitialEvent extends ExportEvent {
  @override
  List<Object?> get props => [];
}
