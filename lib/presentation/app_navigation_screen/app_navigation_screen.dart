import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:amir_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
        create: (context) => AppNavigationBloc(
            AppNavigationState(appNavigationModelObj: AppNavigationModel()))
          ..add(AppNavigationInitialEvent()),
        child: AppNavigationScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onSecondary,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    Container(
                        decoration: AppDecoration.fillOnSecondary,
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 10.v),
                                  child: Text("lbl_app_navigation".tr,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: appTheme.black900,
                                          fontSize: 20.fSize,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text("msg_check_your_app_s".tr,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: appTheme.blueGray40001,
                                          fontSize: 16.fSize,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400)))),
                          SizedBox(height: 5.v),
                          Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.black900)
                        ])),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Container(
                                decoration: AppDecoration.fillOnSecondary,
                                child: Column(children: [
                                  GestureDetector(
                                      onTap: () {
                                        onTapOnboardingOne(context);
                                      },
                                      child: Container(
                                          decoration:
                                              AppDecoration.fillOnSecondary,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_onboarding_one".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapSidebarOne(context);
                                      },
                                      child: Container(
                                          decoration:
                                              AppDecoration.fillOnSecondary,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_sidebar_one".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapDashboard(context);
                                      },
                                      child: Container(
                                          decoration:
                                              AppDecoration.fillOnSecondary,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_dashboard2".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTradeTransaction(context);
                                      },
                                      child: Container(
                                          decoration:
                                              AppDecoration.fillOnSecondary,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_trade_transaction"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTradeTransactionexpanded(context);
                                      },
                                      child: Container(
                                          decoration:
                                              AppDecoration.fillOnSecondary,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_trade_transaction2"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapOnboardingTwo(context);
                                      },
                                      child: Container(
                                          decoration:
                                              AppDecoration.fillOnSecondary,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_onboarding_two".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapExport(context);
                                      },
                                      child: Container(
                                          decoration:
                                              AppDecoration.fillOnSecondary,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text("lbl_export".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapExportTwo(context);
                                      },
                                      child: Container(
                                          decoration:
                                              AppDecoration.fillOnSecondary,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_export_two".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapSidebar(context);
                                      },
                                      child: Container(
                                          decoration:
                                              AppDecoration.fillOnSecondary,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_sidebar".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapChartWeeklyTabContainer(context);
                                      },
                                      child: Container(
                                          decoration:
                                              AppDecoration.fillOnSecondary,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_chart_weekly".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ])))
                                ]))))
                  ]))));
    });
  }

  /// Navigates to the onboardingOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the onboardingOneScreen.
  onTapOnboardingOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingOneScreen,
    );
  }

  /// Navigates to the sidebarOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the sidebarOneScreen.
  onTapSidebarOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sidebarOneScreen,
    );
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the dashboardScreen.
  onTapDashboard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardScreen,
    );
  }

  /// Navigates to the tradeTransactionScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the tradeTransactionScreen.
  onTapTradeTransaction(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.tradeTransactionScreen,
    );
  }

  /// Navigates to the tradeTransactionExpandedScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the tradeTransactionExpandedScreen.
  onTapTradeTransactionexpanded(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.tradeTransactionExpandedScreen,
    );
  }

  /// Navigates to the onboardingTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the onboardingTwoScreen.
  onTapOnboardingTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingTwoScreen,
    );
  }

  /// Navigates to the exportScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the exportScreen.
  onTapExport(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.exportScreen,
    );
  }

  /// Navigates to the exportTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the exportTwoScreen.
  onTapExportTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.exportTwoScreen,
    );
  }

  /// Navigates to the sidebarScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the sidebarScreen.
  onTapSidebar(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sidebarScreen,
    );
  }

  /// Navigates to the chartWeeklyTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the chartWeeklyTabContainerScreen.
  onTapChartWeeklyTabContainer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chartWeeklyTabContainerScreen,
    );
  }
}
