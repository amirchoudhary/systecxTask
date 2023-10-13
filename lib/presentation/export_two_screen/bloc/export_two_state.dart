// ignore_for_file: must_be_immutable

part of 'export_two_bloc.dart';

/// Represents the state of ExportTwo in the application.
class ExportTwoState extends Equatable {
  ExportTwoState({this.exportTwoModelObj});

  ExportTwoModel? exportTwoModelObj;

  @override
  List<Object?> get props => [
        exportTwoModelObj,
      ];
  ExportTwoState copyWith({ExportTwoModel? exportTwoModelObj}) {
    return ExportTwoState(
      exportTwoModelObj: exportTwoModelObj ?? this.exportTwoModelObj,
    );
  }
}
