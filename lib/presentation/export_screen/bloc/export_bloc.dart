import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:amir_s_application1/presentation/export_screen/models/export_model.dart';
part 'export_event.dart';
part 'export_state.dart';

/// A bloc that manages the state of a Export according to the event that is dispatched to it.
class ExportBloc extends Bloc<ExportEvent, ExportState> {
  ExportBloc(ExportState initialState) : super(initialState) {
    on<ExportInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExportInitialEvent event,
    Emitter<ExportState> emit,
  ) async {}
}
