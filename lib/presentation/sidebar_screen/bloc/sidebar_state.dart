// ignore_for_file: must_be_immutable

part of 'sidebar_bloc.dart';

/// Represents the state of Sidebar in the application.
class SidebarState extends Equatable {
  SidebarState({
    this.tradingNameEnUs = false,
    this.sidebarModelObj,
  });

  SidebarModel? sidebarModelObj;

  bool tradingNameEnUs;

  @override
  List<Object?> get props => [
        tradingNameEnUs,
        sidebarModelObj,
      ];
  SidebarState copyWith({
    bool? tradingNameEnUs,
    SidebarModel? sidebarModelObj,
  }) {
    return SidebarState(
      tradingNameEnUs: tradingNameEnUs ?? this.tradingNameEnUs,
      sidebarModelObj: sidebarModelObj ?? this.sidebarModelObj,
    );
  }
}
