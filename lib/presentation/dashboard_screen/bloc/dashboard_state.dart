// ignore_for_file: must_be_immutable

part of 'dashboard_bloc.dart';

/// Represents the state of Dashboard in the application.
class DashboardState extends Equatable {
  DashboardState({
    this.meetingsvalue = false,
    this.approvalsvalue = false,
    this.tasksvalue = false,
    this.tourReports = false,
    this.dashboardModelObj,
  });

  DashboardModel? dashboardModelObj;

  bool meetingsvalue;

  bool approvalsvalue;

  bool tasksvalue;

  bool tourReports;

  @override
  List<Object?> get props => [
        meetingsvalue,
        approvalsvalue,
        tasksvalue,
        tourReports,
        dashboardModelObj,
      ];
  DashboardState copyWith({
    bool? meetingsvalue,
    bool? approvalsvalue,
    bool? tasksvalue,
    bool? tourReports,
    DashboardModel? dashboardModelObj,
  }) {
    return DashboardState(
      meetingsvalue: meetingsvalue ?? this.meetingsvalue,
      approvalsvalue: approvalsvalue ?? this.approvalsvalue,
      tasksvalue: tasksvalue ?? this.tasksvalue,
      tourReports: tourReports ?? this.tourReports,
      dashboardModelObj: dashboardModelObj ?? this.dashboardModelObj,
    );
  }
}
