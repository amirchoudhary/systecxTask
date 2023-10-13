// ignore_for_file: must_be_immutable

part of 'sidebar_one_bloc.dart';

/// Represents the state of SidebarOne in the application.
class SidebarOneState extends Equatable {
  SidebarOneState({
    this.tradingNameEnUs = false,
    this.sidebarOneModelObj,
  });

  SidebarOneModel? sidebarOneModelObj;

  bool tradingNameEnUs;

  @override
  List<Object?> get props => [
        tradingNameEnUs,
        sidebarOneModelObj,
      ];
  SidebarOneState copyWith({
    bool? tradingNameEnUs,
    SidebarOneModel? sidebarOneModelObj,
  }) {
    return SidebarOneState(
      tradingNameEnUs: tradingNameEnUs ?? this.tradingNameEnUs,
      sidebarOneModelObj: sidebarOneModelObj ?? this.sidebarOneModelObj,
    );
  }
}
