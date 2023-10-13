// ignore_for_file: must_be_immutable

part of 'export_bloc.dart';

/// Represents the state of Export in the application.
class ExportState extends Equatable {
  ExportState({this.exportModelObj});

  ExportModel? exportModelObj;

  @override
  List<Object?> get props => [
        exportModelObj,
      ];
  ExportState copyWith({ExportModel? exportModelObj}) {
    return ExportState(
      exportModelObj: exportModelObj ?? this.exportModelObj,
    );
  }
}
