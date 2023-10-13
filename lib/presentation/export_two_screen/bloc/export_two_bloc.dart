import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:amir_s_application1/presentation/export_two_screen/models/export_two_model.dart';
part 'export_two_event.dart';
part 'export_two_state.dart';

/// A bloc that manages the state of a ExportTwo according to the event that is dispatched to it.
class ExportTwoBloc extends Bloc<ExportTwoEvent, ExportTwoState> {
  ExportTwoBloc(ExportTwoState initialState) : super(initialState) {
    on<ExportTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExportTwoInitialEvent event,
    Emitter<ExportTwoState> emit,
  ) async {}
}
