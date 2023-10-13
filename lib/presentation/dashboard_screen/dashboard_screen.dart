import 'bloc/dashboard_bloc.dart';
import 'models/dashboard_model.dart';
import 'package:amir_s_application1/core/app_export.dart';
import 'package:amir_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:amir_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:amir_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:amir_s_application1/widgets/app_bar/appbar_image_2.dart';
import 'package:amir_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:amir_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:amir_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:amir_s_application1/widgets/custom_checkbox_button.dart';
import 'package:amir_s_application1/widgets/custom_elevated_button.dart';
import 'package:amir_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
        create: (context) =>
            DashboardBloc(DashboardState(dashboardModelObj: DashboardModel()))
              ..add(DashboardInitialEvent()),
        child: DashboardScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray5001,
            body: SizedBox(
                width: 358.h,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL18),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomAppBar(
                            height: 47.v,
                            leadingWidth: 35.h,
                            leading: AppbarImage(
                                svgPath: ImageConstant.imgMenu,
                                margin: EdgeInsets.only(
                                    left: 19.h, top: 6.v, bottom: 26.v)),
                            title: Container(
                                margin:
                                    EdgeInsets.only(right: 122.h, bottom: 6.v),
                                decoration: AppDecoration.column3,
                                child: Column(children: [
                                  AppbarTitle(text: "lbl_dashboard".tr),
                                  AppbarImage1(
                                      imagePath: ImageConstant.imgImage5,
                                      margin: EdgeInsets.only(
                                          left: 4.h, right: 74.h)),
                                  AppbarSubtitle(
                                      text: "lbl_systecx".tr,
                                      margin: EdgeInsets.only(
                                          left: 27.h, right: 22.h)),
                                  AppbarImage1(
                                      svgPath: ImageConstant.imgGroup1000005265,
                                      margin: EdgeInsets.only(
                                          left: 16.h, right: 77.h, bottom: 5.v))
                                ])),
                            actions: [
                              Container(
                                  margin: EdgeInsets.only(left: 88.h, top: 3.v),
                                  decoration: AppDecoration.column3,
                                  child: Row(children: [
                                    AppbarImage2(
                                        svgPath: ImageConstant.imgCheckmark,
                                        margin: EdgeInsets.only(top: 15.v)),
                                    AppbarImage2(
                                        svgPath: ImageConstant.imgBell02,
                                        margin: EdgeInsets.only(
                                            left: 47.h,
                                            top: 1.v,
                                            bottom: 23.v)),
                                    AppbarCircleimage(
                                        imagePath: ImageConstant.imgVector20x20,
                                        margin: EdgeInsets.only(
                                            left: 16.h, bottom: 24.v))
                                  ]))
                            ]),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 16.h, top: 6.v, bottom: 11.v),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: IntrinsicWidth(
                                          child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 7.v),
                                              decoration: AppDecoration
                                                  .outlineGray
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder15),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    BlocSelector<
                                                            DashboardBloc,
                                                            DashboardState,
                                                            bool?>(
                                                        selector: (state) =>
                                                            state.meetingsvalue,
                                                        builder: (context,
                                                            meetingsvalue) {
                                                          return CustomCheckboxButton(
                                                              text:
                                                                  "lbl_meetings"
                                                                      .tr,
                                                              value:
                                                                  meetingsvalue,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          1.v),
                                                              onChange:
                                                                  (value) {
                                                                context
                                                                    .read<
                                                                        DashboardBloc>()
                                                                    .add(ChangeCheckBoxEvent(
                                                                        value:
                                                                            value));
                                                              });
                                                        }),
                                                    BlocSelector<
                                                            DashboardBloc,
                                                            DashboardState,
                                                            bool?>(
                                                        selector: (state) =>
                                                            state
                                                                .approvalsvalue,
                                                        builder: (context,
                                                            approvalsvalue) {
                                                          return CustomCheckboxButton(
                                                              text:
                                                                  "lbl_approvals"
                                                                      .tr,
                                                              value:
                                                                  approvalsvalue,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          1.v),
                                                              onChange:
                                                                  (value) {
                                                                context
                                                                    .read<
                                                                        DashboardBloc>()
                                                                    .add(ChangeCheckBox1Event(
                                                                        value:
                                                                            value));
                                                              });
                                                        })
                                                  ])))),
                                  Container(
                                      margin: EdgeInsets.only(left: 5.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14.h, vertical: 7.v),
                                      decoration: AppDecoration.outlineGray
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder15),
                                      child: BlocSelector<DashboardBloc,
                                              DashboardState, bool?>(
                                          selector: (state) => state.tasksvalue,
                                          builder: (context, tasksvalue) {
                                            return CustomCheckboxButton(
                                                text: "lbl_tasks".tr,
                                                value: tasksvalue,
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 1.v),
                                                onChange: (value) {
                                                  context
                                                      .read<DashboardBloc>()
                                                      .add(ChangeCheckBox2Event(
                                                          value: value));
                                                });
                                          })),
                                  Container(
                                      margin: EdgeInsets.only(left: 5.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14.h, vertical: 7.v),
                                      decoration: AppDecoration.outlineGray
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder15),
                                      child: BlocSelector<DashboardBloc,
                                              DashboardState, bool?>(
                                          selector: (state) =>
                                              state.tourReports,
                                          builder: (context, tourReports) {
                                            return CustomCheckboxButton(
                                                text: "lbl_tour_reports".tr,
                                                value: tourReports,
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 1.v),
                                                onChange: (value) {
                                                  context
                                                      .read<DashboardBloc>()
                                                      .add(ChangeCheckBox3Event(
                                                          value: value));
                                                });
                                          })),
                                  Container(
                                      height: 30.v,
                                      width: 43.h,
                                      margin: EdgeInsets.only(left: 6.h),
                                      decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.onPrimaryContainer,
                                          borderRadius:
                                              BorderRadius.circular(15.h),
                                          border: Border.all(
                                              color: appTheme.gray20003,
                                              width: 1.h),
                                          boxShadow: [
                                            BoxShadow(
                                                color: appTheme.black900
                                                    .withOpacity(0.06),
                                                spreadRadius: 2.h,
                                                blurRadius: 2.h,
                                                offset: Offset(0, 4))
                                          ]))
                                ]))
                      ])),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              height: 2177.v,
                              width: 351.h,
                              margin: EdgeInsets.only(left: 16.h, bottom: 5.v),
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 10.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                      height: 196.v,
                                                      width: 328.h,
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child:
                                                                    Container(
                                                                        margin: EdgeInsets.only(
                                                                            top: 25
                                                                                .v),
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal: 23
                                                                                .h,
                                                                            vertical: 21
                                                                                .v),
                                                                        decoration: AppDecoration
                                                                            .gradientDeepOrangeADToDeepOrangeCc
                                                                            .copyWith(
                                                                                borderRadius: BorderRadiusStyle
                                                                                    .circleBorder15),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            children: [
                                                                              SizedBox(height: 75.v),
                                                                              Text("lbl_hi_admin".tr, style: CustomTextStyles.titleMediumOnPrimaryContainer)
                                                                            ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 15
                                                                            .h),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.centerRight,
                                                                              child: Container(height: 46.v, width: 48.h, decoration: BoxDecoration(color: appTheme.pink100.withOpacity(0.3), borderRadius: BorderRadius.circular(24.h)))),
                                                                          Container(
                                                                              margin: EdgeInsets.only(top: 43.v, right: 12.h),
                                                                              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v),
                                                                              decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                Padding(padding: EdgeInsets.only(left: 3.h), child: Text("lbl_earned_profit".tr.toUpperCase(), style: CustomTextStyles.labelLargeGray8000112)),
                                                                                Padding(
                                                                                    padding: EdgeInsets.only(left: 3.h, top: 9.v),
                                                                                    child: RichText(
                                                                                        text: TextSpan(children: [
                                                                                          TextSpan(text: "lbl_1_1".tr, style: CustomTextStyles.headlineMediumSemiBold28),
                                                                                          TextSpan(text: "lbl_m".tr, style: CustomTextStyles.titleMediumGray60003)
                                                                                        ]),
                                                                                        textAlign: TextAlign.left)),
                                                                                Padding(
                                                                                    padding: EdgeInsets.only(left: 2.h, top: 8.v),
                                                                                    child: Row(children: [
                                                                                      CustomImageView(svgPath: ImageConstant.imgPolygon5, height: 9.adaptSize, width: 9.adaptSize, radius: BorderRadius.circular(1.h), margin: EdgeInsets.only(top: 4.v)),
                                                                                      Padding(padding: EdgeInsets.only(left: 2.h), child: Text("lbl_2_5".tr, style: CustomTextStyles.labelLargeGreen700)),
                                                                                      Padding(padding: EdgeInsets.only(left: 5.h), child: Text("lbl_vs_ly".tr, style: CustomTextStyles.bodySmallInterGray500))
                                                                                    ]))
                                                                              ]))
                                                                        ])))
                                                          ])),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 7.h, top: 38.v),
                                                      child: Text(
                                                          "msg_executive_metrics"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .titleMedium)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 300.v),
                                                      child: SizedBox(
                                                          width: 130.h,
                                                          child: Divider(
                                                              color: appTheme
                                                                  .blueGray10002,
                                                              indent: 20.h))),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 7.h, top: 44.v),
                                                      child: Text(
                                                          "lbl_trade_overview"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .titleMedium)),
                                                  SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      padding: EdgeInsets.only(
                                                          left: 3.h, top: 19.v),
                                                      child: IntrinsicWidth(
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                            SizedBox(
                                                                height: 287.v,
                                                                width: 323.h,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.topRight,
                                                                          child: Padding(
                                                                              padding: EdgeInsets.only(top: 103.v, right: 10.h),
                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgCaretupfill, height: 14.adaptSize, width: 14.adaptSize),
                                                                                Padding(padding: EdgeInsets.only(left: 4.h), child: Text("lbl_2".tr, style: CustomTextStyles.labelMediumTeal40001)),
                                                                                Padding(padding: EdgeInsets.only(left: 3.h), child: Text("lbl_vs_lw".tr, style: CustomTextStyles.labelMediumMedium))
                                                                              ]))),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child: Container(
                                                                              padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 12.v),
                                                                              decoration: AppDecoration.outlineBlack900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                Align(
                                                                                    alignment: Alignment.center,
                                                                                    child: Padding(
                                                                                        padding: EdgeInsets.only(left: 10.h, right: 6.h),
                                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                          CustomImageView(imagePath: ImageConstant.imgWaterpipe, height: 23.v, width: 21.h, margin: EdgeInsets.only(top: 13.v, bottom: 12.v)),
                                                                                          Padding(padding: EdgeInsets.only(left: 11.h, top: 16.v, bottom: 14.v), child: Text("lbl_trades".tr.toUpperCase(), style: CustomTextStyles.titleSmallBold)),
                                                                                          Spacer(),
                                                                                          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                            Padding(padding: EdgeInsets.only(left: 26.h), child: Text("lbl_3".tr, style: CustomTextStyles.headlineMedium28)),
                                                                                            Text("lbl_in_this_week".tr, style: CustomTextStyles.labelMediumGray50001_1)
                                                                                          ])
                                                                                        ]))),
                                                                                Padding(
                                                                                    padding: EdgeInsets.only(left: 10.h, top: 36.v, right: 72.h),
                                                                                    child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                                                                                      CustomImageView(svgPath: ImageConstant.imgClock, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v)),
                                                                                      Padding(padding: EdgeInsets.only(left: 13.h, top: 6.v, bottom: 4.v), child: Text("lbl_closed_trades".tr.toUpperCase(), style: CustomTextStyles.labelMediumGray50001)),
                                                                                      Spacer(),
                                                                                      Text("lbl_22".tr, style: theme.textTheme.titleLarge)
                                                                                    ])),
                                                                                Padding(padding: EdgeInsets.only(top: 13.v), child: Divider(indent: 10.h, endIndent: 3.h)),
                                                                                Container(
                                                                                    height: 124.v,
                                                                                    width: 298.h,
                                                                                    margin: EdgeInsets.only(left: 10.h, top: 10.v),
                                                                                    child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgFullshoppingbasket, height: 20.adaptSize, width: 20.adaptSize, alignment: Alignment.topLeft, margin: EdgeInsets.only(top: 1.v)),
                                                                                      Align(
                                                                                          alignment: Alignment.centerLeft,
                                                                                          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                            Align(alignment: Alignment.centerRight, child: Text("lbl_total_materials".tr.toUpperCase(), style: CustomTextStyles.labelMediumGray80001)),
                                                                                            Padding(
                                                                                                padding: EdgeInsets.only(left: 1.h, top: 31.v),
                                                                                                child: Row(children: [
                                                                                                  CustomImageView(imagePath: ImageConstant.imgTodo, height: 22.v, width: 17.h),
                                                                                                  Padding(padding: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 3.v), child: Text("lbl_new_trades".tr.toUpperCase(), style: CustomTextStyles.labelMediumGray50001))
                                                                                                ])),
                                                                                            SizedBox(height: 23.v),
                                                                                            CustomImageView(imagePath: ImageConstant.imgWait, height: 23.v, width: 18.h)
                                                                                          ])),
                                                                                      Align(
                                                                                          alignment: Alignment.bottomRight,
                                                                                          child: Padding(
                                                                                              padding: EdgeInsets.only(right: 2.h),
                                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
                                                                                                Text("lbl_1".tr, style: theme.textTheme.titleLarge),
                                                                                                Padding(padding: EdgeInsets.only(left: 24.h, top: 4.v, bottom: 6.v), child: Text("lbl_0".tr, style: CustomTextStyles.labelMediumOrange300)),
                                                                                                Padding(padding: EdgeInsets.only(left: 3.h, top: 4.v, bottom: 6.v), child: Text("lbl_vs_lw".tr, style: CustomTextStyles.labelMediumMedium))
                                                                                              ]))),
                                                                                      Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 30.h, bottom: 7.v), child: Text("msg_trades_in_progress".tr.toUpperCase(), style: CustomTextStyles.labelMediumGray50001))),
                                                                                      Align(
                                                                                          alignment: Alignment.topRight,
                                                                                          child: Padding(
                                                                                              padding: EdgeInsets.only(right: 5.h),
                                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
                                                                                                Text("lbl_02".tr, style: theme.textTheme.titleLarge),
                                                                                                Container(
                                                                                                    height: 14.v,
                                                                                                    width: 66.h,
                                                                                                    margin: EdgeInsets.only(left: 3.h, top: 4.v, bottom: 6.v),
                                                                                                    child: Stack(alignment: Alignment.centerRight, children: [
                                                                                                      Align(
                                                                                                          alignment: Alignment.bottomLeft,
                                                                                                          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, children: [
                                                                                                            Padding(
                                                                                                                padding: EdgeInsets.only(right: 54.h),
                                                                                                                child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                                                  Text("lbl_02".tr, style: theme.textTheme.titleLarge),
                                                                                                                  CustomImageView(svgPath: ImageConstant.imgCaretupfill, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(left: 3.h, top: 4.v, bottom: 6.v))
                                                                                                                ])),
                                                                                                            SizedBox(height: 12.v),
                                                                                                            Divider()
                                                                                                          ])),
                                                                                                      Align(
                                                                                                          alignment: Alignment.centerRight,
                                                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                                                            Text("lbl_12".tr, style: CustomTextStyles.labelMediumTeal40001),
                                                                                                            Padding(padding: EdgeInsets.only(left: 3.h), child: Text("lbl_vs_lw".tr, style: CustomTextStyles.labelMediumMedium))
                                                                                                          ]))
                                                                                                    ]))
                                                                                              ]))),
                                                                                      Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(top: 37.v), child: SizedBox(width: 294.h, child: Divider()))),
                                                                                      Align(
                                                                                          alignment: Alignment.centerRight,
                                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
                                                                                            Text("lbl_1".tr, style: theme.textTheme.titleLarge),
                                                                                            Container(
                                                                                                height: 14.v,
                                                                                                width: 71.h,
                                                                                                margin: EdgeInsets.only(left: 6.h, top: 4.v, bottom: 6.v),
                                                                                                child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                                  Align(
                                                                                                      alignment: Alignment.bottomLeft,
                                                                                                      child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, children: [
                                                                                                        Padding(
                                                                                                            padding: EdgeInsets.only(right: 54.h),
                                                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                                              Text("lbl_1".tr, style: theme.textTheme.titleLarge),
                                                                                                              CustomImageView(svgPath: ImageConstant.imgCaretupfillRed600, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(left: 6.h, top: 4.v, bottom: 6.v))
                                                                                                            ])),
                                                                                                        SizedBox(height: 11.v),
                                                                                                        Divider()
                                                                                                      ])),
                                                                                                  Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 18.h), child: Text("lbl_13".tr, style: CustomTextStyles.labelMediumRed600))),
                                                                                                  Align(alignment: Alignment.bottomRight, child: Text("lbl_vs_lw".tr, style: CustomTextStyles.labelMediumMedium))
                                                                                                ]))
                                                                                          ])),
                                                                                      Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 35.v), child: SizedBox(width: 294.h, child: Divider())))
                                                                                    ]))
                                                                              ])))
                                                                    ])),
                                                            Container(
                                                                height: 287.v,
                                                                width: 1.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 15
                                                                            .h)),
                                                            SizedBox(
                                                                height: 287.v,
                                                                width: 323.h,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.topRight,
                                                                          child: Padding(
                                                                              padding: EdgeInsets.only(top: 103.v, right: 10.h),
                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgCaretupfill, height: 14.adaptSize, width: 14.adaptSize),
                                                                                Padding(padding: EdgeInsets.only(left: 4.h), child: Text("lbl_2".tr, style: CustomTextStyles.labelMediumTeal40001)),
                                                                                Padding(padding: EdgeInsets.only(left: 4.h), child: Text("lbl_vs_lw".tr, style: CustomTextStyles.labelMediumMedium))
                                                                              ]))),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child: Container(
                                                                              padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 13.v),
                                                                              decoration: AppDecoration.outlineBlack900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                Padding(
                                                                                    padding: EdgeInsets.symmetric(horizontal: 7.h),
                                                                                    child: Row(children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgExchange, height: 26.adaptSize, width: 26.adaptSize, margin: EdgeInsets.only(top: 12.v, bottom: 10.v)),
                                                                                      Padding(padding: EdgeInsets.only(left: 8.h, top: 16.v, bottom: 15.v), child: Text("lbl_purchase".tr.toUpperCase(), style: CustomTextStyles.titleSmallBold)),
                                                                                      Spacer(),
                                                                                      Column(children: [
                                                                                        RichText(
                                                                                            text: TextSpan(children: [
                                                                                              TextSpan(text: "lbl_5_2".tr, style: CustomTextStyles.headlineMedium28_1),
                                                                                              TextSpan(text: "lbl_m".tr, style: CustomTextStyles.titleLargeGray60003)
                                                                                            ]),
                                                                                            textAlign: TextAlign.left),
                                                                                        SizedBox(height: 2.v),
                                                                                        Text("lbl_in_this_week".tr, style: CustomTextStyles.labelMediumGray50001_1)
                                                                                      ])
                                                                                    ])),
                                                                                Padding(
                                                                                    padding: EdgeInsets.only(left: 9.h, top: 38.v, right: 43.h),
                                                                                    child: Row(children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgBill, height: 23.adaptSize, width: 23.adaptSize, margin: EdgeInsets.only(top: 2.v, bottom: 3.v)),
                                                                                      Container(width: 119.h, margin: EdgeInsets.only(left: 9.h, top: 2.v), child: Text("msg_total_purchase_amount".tr.toUpperCase(), maxLines: null, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelMediumGray50001)),
                                                                                      Spacer(),
                                                                                      Padding(
                                                                                          padding: EdgeInsets.only(bottom: 4.v),
                                                                                          child: RichText(
                                                                                              text: TextSpan(children: [
                                                                                                TextSpan(text: "lbl_20".tr, style: theme.textTheme.titleLarge),
                                                                                                TextSpan(text: "lbl_m".tr, style: CustomTextStyles.titleMediumGray60003_1)
                                                                                              ]),
                                                                                              textAlign: TextAlign.left))
                                                                                    ])),
                                                                                Padding(padding: EdgeInsets.only(top: 10.v), child: Divider(indent: 12.h, endIndent: 3.h)),
                                                                                Align(
                                                                                    alignment: Alignment.center,
                                                                                    child: Padding(
                                                                                        padding: EdgeInsets.only(left: 11.h, top: 11.v, right: 3.h),
                                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                          CustomImageView(imagePath: ImageConstant.imgFullshoppingbasket, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(top: 1.v, bottom: 3.v)),
                                                                                          Padding(padding: EdgeInsets.only(left: 11.h, top: 4.v, bottom: 5.v), child: Text("lbl_total_materials".tr.toUpperCase(), style: CustomTextStyles.labelMediumGray80001)),
                                                                                          Spacer(),
                                                                                          Text("lbl_22".tr, style: theme.textTheme.titleLarge),
                                                                                          CustomImageView(svgPath: ImageConstant.imgCaretupfill, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(left: 3.h, top: 4.v, bottom: 5.v)),
                                                                                          Padding(padding: EdgeInsets.only(left: 4.h, top: 4.v, bottom: 5.v), child: Text("lbl_12".tr, style: CustomTextStyles.labelMediumTeal40001)),
                                                                                          Padding(padding: EdgeInsets.only(left: 4.h, top: 4.v, bottom: 5.v), child: Text("lbl_vs_lw".tr, style: CustomTextStyles.labelMediumMedium))
                                                                                        ]))),
                                                                                Padding(padding: EdgeInsets.only(top: 13.v), child: Divider(indent: 12.h, endIndent: 3.h)),
                                                                                Container(
                                                                                    height: 24.v,
                                                                                    width: 297.h,
                                                                                    margin: EdgeInsets.only(left: 12.h, top: 13.v, bottom: 50.v),
                                                                                    child: Stack(alignment: Alignment.topLeft, children: [
                                                                                      Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 72.h), child: Text("lbl_8".tr, style: theme.textTheme.titleLarge))),
                                                                                      Align(
                                                                                          alignment: Alignment.topLeft,
                                                                                          child: Row(children: [
                                                                                            CustomImageView(imagePath: ImageConstant.imgTodo, height: 22.v, width: 17.h),
                                                                                            Padding(padding: EdgeInsets.only(left: 13.h, top: 7.v, bottom: 2.v), child: Text("msg_total_no_purchases".tr.toUpperCase(), style: CustomTextStyles.labelMediumGray50001))
                                                                                          ])),
                                                                                      Align(
                                                                                          alignment: Alignment.topRight,
                                                                                          child: Padding(
                                                                                              padding: EdgeInsets.only(top: 4.v),
                                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [
                                                                                                CustomImageView(svgPath: ImageConstant.imgCaretupfillRed600, height: 14.adaptSize, width: 14.adaptSize),
                                                                                                Padding(padding: EdgeInsets.only(left: 4.h), child: Text("lbl_13".tr, style: CustomTextStyles.labelMediumRed600)),
                                                                                                Padding(padding: EdgeInsets.only(left: 4.h), child: Text("lbl_vs_lw".tr, style: CustomTextStyles.labelMediumMedium))
                                                                                              ])))
                                                                                    ]))
                                                                              ])))
                                                                    ]))
                                                          ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 25.v),
                                                          child: SizedBox(
                                                              width: 194.h,
                                                              child: Divider(
                                                                  color: appTheme
                                                                      .blueGray10002,
                                                                  endIndent:
                                                                      84.h)))),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h, top: 33.v),
                                                      child: Text(
                                                          "lbl_divisions".tr,
                                                          style: theme.textTheme
                                                              .titleMedium)),
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          top: 20.v,
                                                          right: 13.h),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 17.h,
                                                              vertical: 12.v),
                                                      decoration: AppDecoration
                                                          .outlineOnPrimary
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder6),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 1
                                                                            .h),
                                                                child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Expanded(
                                                                          child: Padding(
                                                                              padding: EdgeInsets.only(top: 4.v),
                                                                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                Row(children: [
                                                                                  RichText(
                                                                                      text: TextSpan(children: [
                                                                                        TextSpan(text: "lbl_category".tr, style: CustomTextStyles.bodyMediumGray500),
                                                                                        TextSpan(text: "lbl".tr, style: CustomTextStyles.bodyMediumGray500_1),
                                                                                        TextSpan(text: " "),
                                                                                        TextSpan(text: "lbl_coal".tr, style: CustomTextStyles.titleSmallBluegray800)
                                                                                      ]),
                                                                                      textAlign: TextAlign.left),
                                                                                  CustomImageView(svgPath: ImageConstant.imgArrowdown, height: 6.v, width: 10.h, radius: BorderRadius.circular(1.h), margin: EdgeInsets.only(left: 6.h, top: 7.v, bottom: 3.v))
                                                                                ]),
                                                                                Padding(padding: EdgeInsets.only(top: 15.v), child: Divider(color: appTheme.gray200, indent: 1.h)),
                                                                                Padding(padding: EdgeInsets.only(left: 1.h, top: 21.v), child: Text("lbl_quality_check".tr, style: CustomTextStyles.labelMediumGray60004)),
                                                                                Container(margin: EdgeInsets.only(left: 1.h, top: 8.v), padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 1.v), decoration: AppDecoration.fillTeal.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Text("lbl_pass".tr, style: CustomTextStyles.labelMediumGray90002))
                                                                              ]))),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 21.h,
                                                                              bottom: 59.v),
                                                                          child: Column(children: [
                                                                            CustomIconButton(
                                                                                height: 26.adaptSize,
                                                                                width: 26.adaptSize,
                                                                                padding: EdgeInsets.all(4.h),
                                                                                decoration: IconButtonStyleHelper.fillRedTL13,
                                                                                child: CustomImageView(svgPath: ImageConstant.imgTicket)),
                                                                            SizedBox(height: 1.v),
                                                                            Text("lbl_amount".tr,
                                                                                style: theme.textTheme.labelMedium)
                                                                          ]))
                                                                    ])),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            2.h,
                                                                        top: 30
                                                                            .v),
                                                                child: Text(
                                                                    "lbl_quality_report"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelLargeGray60004)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            6.h,
                                                                        top:
                                                                            6.v,
                                                                        right: 29
                                                                            .h),
                                                                child: Row(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgGroup1000005260,
                                                                          height: 1
                                                                              .v,
                                                                          width: 198
                                                                              .h,
                                                                          margin: EdgeInsets.only(
                                                                              top: 9.v,
                                                                              bottom: 8.v)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 28
                                                                                  .h),
                                                                          child: Text(
                                                                              "lbl_80".tr,
                                                                              style: CustomTextStyles.titleSmallGray90002))
                                                                    ])),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            2.h,
                                                                        top: 28
                                                                            .v),
                                                                child: Text(
                                                                    "msg_quantity_processed"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelLargeGray60004)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            2.h,
                                                                        top: 14
                                                                            .v,
                                                                        bottom: 7
                                                                            .v),
                                                                child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "lbl_1000_mt"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.titleMediumGray90002),
                                                                      CustomElevatedButton(
                                                                          width: 34
                                                                              .h,
                                                                          text: "lbl_2"
                                                                              .tr,
                                                                          margin: EdgeInsets.only(
                                                                              left: 13
                                                                                  .h,
                                                                              top: 4
                                                                                  .v),
                                                                          leftIcon: Container(
                                                                              margin: EdgeInsets.only(right: 6.h),
                                                                              child: CustomImageView(svgPath: ImageConstant.imgLine299)))
                                                                    ]))
                                                          ])),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h, top: 57.v),
                                                      child: Text(
                                                          "lbl_notifications"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .titleMedium)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 7.h,
                                                          top: 387.v),
                                                      child: Text(
                                                          "lbl_cash_flow".tr,
                                                          style: theme.textTheme
                                                              .titleMedium))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                top: 20.v, right: 9.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.h,
                                                vertical: 27.v),
                                            decoration: AppDecoration.fillPink
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder58),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 43.v),
                                                  Container(
                                                      decoration: AppDecoration
                                                          .outlineIndigo
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder1),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            7.h,
                                                                        top:
                                                                            3.v,
                                                                        bottom: 2
                                                                            .v),
                                                                child: Text(
                                                                    "lbl_d".tr,
                                                                    style: CustomTextStyles
                                                                        .labelMediumGray400)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            9.h,
                                                                        top:
                                                                            3.v,
                                                                        bottom: 2
                                                                            .v),
                                                                child: Text(
                                                                    "lbl_w".tr,
                                                                    style: CustomTextStyles
                                                                        .labelMediumGray400)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            9.h,
                                                                        top:
                                                                            3.v,
                                                                        bottom: 2
                                                                            .v),
                                                                child: Text(
                                                                    "lbl_m".tr,
                                                                    style: CustomTextStyles
                                                                        .labelMediumGray400)),
                                                            Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 5
                                                                            .h),
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            5.h,
                                                                        vertical: 2
                                                                            .v),
                                                                decoration: AppDecoration
                                                                    .fillRed
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder1),
                                                                child: Text(
                                                                    "lbl_y".tr,
                                                                    style: CustomTextStyles
                                                                        .labelMediumOnPrimaryContainerBold))
                                                          ]))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                top: 90.v, right: 36.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.h,
                                                vertical: 15.v),
                                            decoration: AppDecoration
                                                .outlineBlack
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      "lbl_revenue"
                                                          .tr
                                                          .toUpperCase(),
                                                      style: CustomTextStyles
                                                          .labelLargeGray8000112),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h, top: 9.v),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_0_5"
                                                                            .tr,
                                                                    style: CustomTextStyles
                                                                        .headlineMediumSemiBold28),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_b"
                                                                            .tr,
                                                                    style: CustomTextStyles
                                                                        .titleMediumGray60003)
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left)),
                                                  SizedBox(height: 8.v),
                                                  Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgLocation,
                                                        height: 9.adaptSize,
                                                        width: 9.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(1.h),
                                                        margin: EdgeInsets.only(
                                                            top: 2.v,
                                                            bottom: 3.v)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 2.h),
                                                        child: Text(
                                                            "lbl_8_5".tr,
                                                            style: CustomTextStyles
                                                                .labelLargeRed50001)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 4.h),
                                                        child: Text(
                                                            "lbl_vs_ly".tr,
                                                            style: CustomTextStyles
                                                                .bodySmallInterGray500))
                                                  ])
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(top: 280.v),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 6.h,
                                                              vertical: 18.v),
                                                      decoration: AppDecoration
                                                          .outlineBlack900
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder6),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: SizedBox(
                                                                    height:
                                                                        93.v,
                                                                    width: 96.h,
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.topRight,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.bottomCenter,
                                                                              child: Text("lbl_customers".tr.toUpperCase(), style: CustomTextStyles.labelLargeGray80001)),
                                                                          Align(
                                                                              alignment: Alignment.topRight,
                                                                              child: Container(
                                                                                  height: 78.v,
                                                                                  width: 77.h,
                                                                                  margin: EdgeInsets.only(right: 4.h),
                                                                                  child: Stack(alignment: Alignment.bottomRight, children: [
                                                                                    Align(
                                                                                        alignment: Alignment.topLeft,
                                                                                        child: SizedBox(
                                                                                            height: 69.v,
                                                                                            width: 71.h,
                                                                                            child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                                              CustomImageView(imagePath: ImageConstant.imgSnacks1, height: 69.v, width: 71.h, alignment: Alignment.center),
                                                                                              Align(alignment: Alignment.bottomLeft, child: Container(height: 59.v, width: 25.h, margin: EdgeInsets.only(left: 21.h, bottom: 3.v), decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer)))
                                                                                            ]))),
                                                                                    CustomImageView(svgPath: ImageConstant.imgContrast, height: 67.v, width: 31.h, alignment: Alignment.bottomRight),
                                                                                    CustomImageView(imagePath: ImageConstant.imgStaff, height: 49.adaptSize, width: 49.adaptSize, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 9.h, top: 10.v))
                                                                                  ])))
                                                                        ]))),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 50
                                                                            .h,
                                                                        top: 16
                                                                            .v),
                                                                child: Text(
                                                                    "lbl_45".tr,
                                                                    style: CustomTextStyles
                                                                        .headlineMediumSemiBold)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            4.h,
                                                                        top: 32
                                                                            .v),
                                                                child: Row(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgPolygon5,
                                                                          height: 12
                                                                              .adaptSize,
                                                                          width:
                                                                              12.adaptSize),
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.only(left: 4.h),
                                                                          child: RichText(
                                                                              text: TextSpan(children: [
                                                                                TextSpan(text: "lbl_23".tr, style: CustomTextStyles.labelMediumGreen700_2),
                                                                                TextSpan(text: "lbl_vs_lw".tr, style: CustomTextStyles.labelMediumMedium_1)
                                                                              ]),
                                                                              textAlign: TextAlign.left)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgLocation,
                                                                          height: 12
                                                                              .adaptSize,
                                                                          width: 12
                                                                              .adaptSize,
                                                                          margin:
                                                                              EdgeInsets.only(left: 16.h)),
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.only(left: 4.h),
                                                                          child: RichText(
                                                                              text: TextSpan(children: [
                                                                                TextSpan(text: "lbl_23".tr, style: CustomTextStyles.labelMediumRed50001_1),
                                                                                TextSpan(text: "lbl_vs_lm".tr, style: CustomTextStyles.labelMediumMedium_1)
                                                                              ]),
                                                                              textAlign: TextAlign.left))
                                                                    ])),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            4.h,
                                                                        top: 11
                                                                            .v),
                                                                child: Row(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgPolygon5,
                                                                          height: 12
                                                                              .adaptSize,
                                                                          width: 12
                                                                              .adaptSize,
                                                                          margin:
                                                                              EdgeInsets.only(bottom: 1.v)),
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.only(left: 4.h),
                                                                          child: RichText(
                                                                              text: TextSpan(children: [
                                                                                TextSpan(text: "lbl_23".tr, style: CustomTextStyles.labelMediumGreen700_2),
                                                                                TextSpan(text: "lbl_vs_lq".tr, style: CustomTextStyles.labelMediumMedium_1)
                                                                              ]),
                                                                              textAlign: TextAlign.left)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgArrowup,
                                                                          height: 12
                                                                              .adaptSize,
                                                                          width: 12
                                                                              .adaptSize,
                                                                          margin: EdgeInsets.only(
                                                                              left: 18.h,
                                                                              bottom: 1.v)),
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.only(left: 4.h),
                                                                          child: RichText(
                                                                              text: TextSpan(children: [
                                                                                TextSpan(text: "lbl_23".tr, style: CustomTextStyles.labelMediumGreen700_2),
                                                                                TextSpan(text: "lbl_vs_ly".tr, style: CustomTextStyles.labelMediumMedium_1)
                                                                              ]),
                                                                              textAlign: TextAlign.left))
                                                                    ]))
                                                          ])),
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          left: 15.h),
                                                      decoration: AppDecoration
                                                          .outlineBlack900
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder6),
                                                      child:
                                                          SingleChildScrollView(
                                                              scrollDirection:
                                                                  Axis
                                                                      .horizontal,
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          10.h),
                                                              child:
                                                                  IntrinsicWidth(
                                                                      child: Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            top: 14
                                                                                .v,
                                                                            bottom: 18
                                                                                .v),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                  height: 100.v,
                                                                                  width: 87.h,
                                                                                  margin: EdgeInsets.only(left: 25.h),
                                                                                  child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                                    Align(
                                                                                        alignment: Alignment.topRight,
                                                                                        child: SizedBox(
                                                                                            height: 82.v,
                                                                                            width: 77.h,
                                                                                            child: Stack(alignment: Alignment.bottomRight, children: [
                                                                                              Align(
                                                                                                  alignment: Alignment.topLeft,
                                                                                                  child: SizedBox(
                                                                                                      height: 69.v,
                                                                                                      width: 71.h,
                                                                                                      child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                                                        CustomImageView(imagePath: ImageConstant.imgSnacks1, height: 69.v, width: 71.h, alignment: Alignment.center),
                                                                                                        Align(alignment: Alignment.bottomLeft, child: Container(height: 59.v, width: 25.h, margin: EdgeInsets.only(left: 21.h, bottom: 1.v), decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer)))
                                                                                                      ]))),
                                                                                              CustomImageView(svgPath: ImageConstant.imgContrast, height: 67.v, width: 31.h, alignment: Alignment.bottomRight),
                                                                                              CustomImageView(imagePath: ImageConstant.imgMeetingroom, height: 46.adaptSize, width: 46.adaptSize, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 12.h, top: 15.v))
                                                                                            ]))),
                                                                                    Align(alignment: Alignment.bottomCenter, child: Text("lbl_meetings2".tr, style: CustomTextStyles.titleSmallSemiBold))
                                                                                  ])),
                                                                              Padding(padding: EdgeInsets.only(left: 52.h, top: 12.v), child: Text("lbl_75".tr, style: CustomTextStyles.headlineMediumBluegray90001)),
                                                                              SizedBox(height: 34.v),
                                                                              Row(children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgPolygon5, height: 12.adaptSize, width: 12.adaptSize),
                                                                                Padding(
                                                                                    padding: EdgeInsets.only(left: 4.h),
                                                                                    child: RichText(
                                                                                        text: TextSpan(children: [
                                                                                          TextSpan(text: "lbl_23".tr, style: CustomTextStyles.labelMediumErrorContainer),
                                                                                          TextSpan(text: "lbl_vs_lw".tr, style: CustomTextStyles.labelMediumMedium_1)
                                                                                        ]),
                                                                                        textAlign: TextAlign.left)),
                                                                                CustomImageView(svgPath: ImageConstant.imgLocation, height: 12.adaptSize, width: 12.adaptSize, margin: EdgeInsets.only(left: 16.h)),
                                                                                Padding(
                                                                                    padding: EdgeInsets.only(left: 4.h),
                                                                                    child: RichText(
                                                                                        text: TextSpan(children: [
                                                                                          TextSpan(text: "lbl_23".tr, style: CustomTextStyles.labelMediumRed50001_1),
                                                                                          TextSpan(text: "lbl_vs_lm".tr, style: CustomTextStyles.labelMediumMedium_1)
                                                                                        ]),
                                                                                        textAlign: TextAlign.left))
                                                                              ]),
                                                                              SizedBox(height: 11.v),
                                                                              Row(children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgPolygon5, height: 12.adaptSize, width: 12.adaptSize, margin: EdgeInsets.only(bottom: 1.v)),
                                                                                Padding(
                                                                                    padding: EdgeInsets.only(left: 4.h),
                                                                                    child: RichText(
                                                                                        text: TextSpan(children: [
                                                                                          TextSpan(text: "lbl_23".tr, style: CustomTextStyles.labelMediumErrorContainer),
                                                                                          TextSpan(text: "lbl_vs_lq".tr, style: CustomTextStyles.labelMediumMedium_1)
                                                                                        ]),
                                                                                        textAlign: TextAlign.left)),
                                                                                CustomImageView(svgPath: ImageConstant.imgPolygon5, height: 12.adaptSize, width: 12.adaptSize, margin: EdgeInsets.only(left: 18.h, bottom: 1.v)),
                                                                                Padding(
                                                                                    padding: EdgeInsets.only(left: 4.h),
                                                                                    child: RichText(
                                                                                        text: TextSpan(children: [
                                                                                          TextSpan(text: "lbl_23".tr, style: CustomTextStyles.labelMediumErrorContainer),
                                                                                          TextSpan(text: "lbl_vs_ly".tr, style: CustomTextStyles.labelMediumMedium_1)
                                                                                        ]),
                                                                                        textAlign: TextAlign.left))
                                                                              ])
                                                                            ])),
                                                                    Container(
                                                                        height: 252
                                                                            .v,
                                                                        width: 158
                                                                            .h,
                                                                        margin: EdgeInsets.only(
                                                                            left: 21
                                                                                .h),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: Container(
                                                                                      height: 252.v,
                                                                                      width: 158.h,
                                                                                      decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer, borderRadius: BorderRadius.circular(8.h), boxShadow: [
                                                                                        BoxShadow(color: appTheme.black900.withOpacity(0.1), spreadRadius: 2.h, blurRadius: 2.h, offset: Offset(0, 4))
                                                                                      ]))),
                                                                              Align(
                                                                                  alignment: Alignment.topCenter,
                                                                                  child: Padding(
                                                                                      padding: EdgeInsets.only(left: 44.h, top: 15.v, right: 37.h),
                                                                                      child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                        SizedBox(
                                                                                            height: 82.v,
                                                                                            width: 77.h,
                                                                                            child: Stack(alignment: Alignment.bottomRight, children: [
                                                                                              Align(
                                                                                                  alignment: Alignment.topLeft,
                                                                                                  child: SizedBox(
                                                                                                      height: 69.v,
                                                                                                      width: 71.h,
                                                                                                      child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                                                        CustomImageView(imagePath: ImageConstant.imgSnacks1, height: 69.v, width: 71.h, alignment: Alignment.center),
                                                                                                        Align(alignment: Alignment.bottomLeft, child: Container(height: 59.v, width: 25.h, margin: EdgeInsets.only(left: 21.h, bottom: 1.v), decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer)))
                                                                                                      ]))),
                                                                                              CustomImageView(svgPath: ImageConstant.imgContrast, height: 67.v, width: 31.h, alignment: Alignment.bottomRight),
                                                                                              CustomImageView(svgPath: ImageConstant.imgVector, height: 36.v, width: 41.h, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 13.h, top: 17.v))
                                                                                            ])),
                                                                                        Padding(padding: EdgeInsets.only(left: 11.h, top: 31.v), child: Text("lbl_26".tr, style: CustomTextStyles.headlineMediumSemiBold))
                                                                                      ]))),
                                                                              Align(
                                                                                  alignment: Alignment.bottomCenter,
                                                                                  child: Padding(
                                                                                      padding: EdgeInsets.only(left: 10.h, right: 10.h, bottom: 20.v),
                                                                                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                                                                                        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                          CustomImageView(svgPath: ImageConstant.imgPolygon5, height: 12.adaptSize, width: 12.adaptSize),
                                                                                          Padding(
                                                                                              padding: EdgeInsets.only(left: 4.h),
                                                                                              child: RichText(
                                                                                                  text: TextSpan(children: [
                                                                                                    TextSpan(text: "lbl_23".tr, style: CustomTextStyles.labelSmallGreen700),
                                                                                                    TextSpan(text: "lbl_vs_lw".tr, style: CustomTextStyles.labelSmallBluegray90001Medium)
                                                                                                  ]),
                                                                                                  textAlign: TextAlign.left)),
                                                                                          CustomImageView(svgPath: ImageConstant.imgLocation, height: 12.adaptSize, width: 12.adaptSize, margin: EdgeInsets.only(left: 5.h)),
                                                                                          Padding(
                                                                                              padding: EdgeInsets.only(left: 4.h),
                                                                                              child: RichText(
                                                                                                  text: TextSpan(children: [
                                                                                                    TextSpan(text: "lbl_23".tr, style: CustomTextStyles.labelSmallRed50001),
                                                                                                    TextSpan(text: "lbl_vs_lm".tr, style: CustomTextStyles.labelSmallBluegray90001Medium)
                                                                                                  ]),
                                                                                                  textAlign: TextAlign.left))
                                                                                        ]),
                                                                                        SizedBox(height: 12.v),
                                                                                        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                          CustomImageView(svgPath: ImageConstant.imgPolygon5, height: 12.adaptSize, width: 12.adaptSize),
                                                                                          Padding(
                                                                                              padding: EdgeInsets.only(left: 4.h),
                                                                                              child: RichText(
                                                                                                  text: TextSpan(children: [
                                                                                                    TextSpan(text: "lbl_23".tr, style: CustomTextStyles.labelSmallGreen700),
                                                                                                    TextSpan(text: "lbl_vs_lq".tr, style: CustomTextStyles.labelSmallBluegray90001Medium)
                                                                                                  ]),
                                                                                                  textAlign: TextAlign.left)),
                                                                                          CustomImageView(svgPath: ImageConstant.imgPolygon5, height: 12.adaptSize, width: 12.adaptSize, margin: EdgeInsets.only(left: 5.h)),
                                                                                          Padding(
                                                                                              padding: EdgeInsets.only(left: 4.h),
                                                                                              child: RichText(
                                                                                                  text: TextSpan(children: [
                                                                                                    TextSpan(text: "lbl_23".tr, style: CustomTextStyles.labelSmallGreen700),
                                                                                                    TextSpan(text: "lbl_vs_ly".tr, style: CustomTextStyles.labelSmallBluegray90001Medium)
                                                                                                  ]),
                                                                                                  textAlign: TextAlign.left))
                                                                                        ])
                                                                                      ]))),
                                                                              Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(top: 96.v), child: Text("lbl_suppliers".tr.toUpperCase(), textAlign: TextAlign.center, style: CustomTextStyles.labelLargeGray80001)))
                                                                            ]))
                                                                  ])))),
                                                  Container(
                                                      height: 252.v,
                                                      width: 1.h,
                                                      margin: EdgeInsets.only(
                                                          left: 15.h))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                right: 9.h, bottom: 44.v),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      width: 328.h,
                                                      margin: EdgeInsets.only(
                                                          right: 14.h),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 12.h,
                                                              vertical: 18.v),
                                                      decoration: AppDecoration
                                                          .outlineOnPrimary
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder6),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            1.h,
                                                                        right: 32
                                                                            .h),
                                                                child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector20x20,
                                                                          height: 20
                                                                              .adaptSize,
                                                                          width: 20
                                                                              .adaptSize,
                                                                          radius: BorderRadius.circular(10
                                                                              .h),
                                                                          margin: EdgeInsets.only(
                                                                              top: 3.v,
                                                                              bottom: 10.v)),
                                                                      Expanded(
                                                                          child: Container(
                                                                              width: 240.h,
                                                                              margin: EdgeInsets.only(left: 10.h),
                                                                              child: Text("msg_payment_is_due_for".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelMediumMedium11.copyWith(height: 1.50))))
                                                                    ])),
                                                            Container(
                                                                margin:
                                                                    EdgeInsets.only(
                                                                        left: 29
                                                                            .h,
                                                                        top: 5
                                                                            .v),
                                                                padding: EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        12.h,
                                                                    vertical:
                                                                        2.v),
                                                                decoration: AppDecoration
                                                                    .fillCyan
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder6),
                                                                child: Text(
                                                                    "msg_tr_22_necu_nesp_00340"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .montserratGray90002)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 29
                                                                            .h,
                                                                        top: 5
                                                                            .v),
                                                                child: Text(
                                                                    "msg_20_03_2022_01_45"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelSmallBlack900)),
                                                            SizedBox(
                                                                height: 16.v),
                                                            Divider(
                                                                color: appTheme
                                                                    .gray200),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            1.h,
                                                                        top: 16
                                                                            .v,
                                                                        right: 32
                                                                            .h),
                                                                child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector20x20,
                                                                          height: 20
                                                                              .adaptSize,
                                                                          width: 20
                                                                              .adaptSize,
                                                                          radius: BorderRadius.circular(10
                                                                              .h),
                                                                          margin: EdgeInsets.only(
                                                                              top: 3.v,
                                                                              bottom: 10.v)),
                                                                      Expanded(
                                                                          child: Container(
                                                                              width: 240.h,
                                                                              margin: EdgeInsets.only(left: 10.h),
                                                                              child: Text("msg_payment_is_due_for".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelMediumMedium11.copyWith(height: 1.50))))
                                                                    ])),
                                                            Container(
                                                                margin:
                                                                    EdgeInsets.only(
                                                                        left: 29
                                                                            .h,
                                                                        top: 5
                                                                            .v),
                                                                padding: EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        12.h,
                                                                    vertical:
                                                                        2.v),
                                                                decoration: AppDecoration
                                                                    .fillCyan
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder6),
                                                                child: Text(
                                                                    "msg_tr_22_necu_nesp_00340"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .montserratGray90002)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 29
                                                                            .h,
                                                                        top: 5
                                                                            .v),
                                                                child: Text(
                                                                    "msg_20_03_2022_01_45"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelSmallBlack900)),
                                                            SizedBox(
                                                                height: 14.v),
                                                            Divider(
                                                                color: appTheme
                                                                    .gray200),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            1.h,
                                                                        top: 14
                                                                            .v,
                                                                        right: 32
                                                                            .h),
                                                                child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector20x20,
                                                                          height: 20
                                                                              .adaptSize,
                                                                          width: 20
                                                                              .adaptSize,
                                                                          radius: BorderRadius.circular(10
                                                                              .h),
                                                                          margin: EdgeInsets.only(
                                                                              top: 3.v,
                                                                              bottom: 10.v)),
                                                                      Expanded(
                                                                          child: Container(
                                                                              width: 240.h,
                                                                              margin: EdgeInsets.only(left: 10.h),
                                                                              child: Text("msg_payment_is_due_for".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelMediumMedium11.copyWith(height: 1.50))))
                                                                    ])),
                                                            Container(
                                                                margin:
                                                                    EdgeInsets.only(
                                                                        left: 29
                                                                            .h,
                                                                        top: 5
                                                                            .v),
                                                                padding: EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        12.h,
                                                                    vertical:
                                                                        2.v),
                                                                decoration: AppDecoration
                                                                    .fillCyan
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder6),
                                                                child: Text(
                                                                    "msg_tr_22_necu_nesp_00340"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .montserratGray90002)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 29
                                                                            .h,
                                                                        right:
                                                                            7.h,
                                                                        bottom: 5
                                                                            .v),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Padding(
                                                                              padding: EdgeInsets.only(top: 3.v),
                                                                              child: Text("msg_20_03_2022_01_45".tr, style: CustomTextStyles.labelSmallBlack900)),
                                                                          Text(
                                                                              "lbl_view_more".tr,
                                                                              style: CustomTextStyles.labelMediumRed400.copyWith(decoration: TextDecoration.underline))
                                                                        ])))
                                                          ])),
                                                  SizedBox(height: 207.v),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroup512584,
                                                      height: 197.v,
                                                      width: 288.h,
                                                      alignment:
                                                          Alignment.centerRight)
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 14.h,
                                                vertical: 17.v),
                                            decoration: AppDecoration
                                                .outlineOnPrimary
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder6),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgCurrency4,
                                                            height:
                                                                17.adaptSize,
                                                            width: 17.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 2.v)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 6.h,
                                                                    top: 4.v),
                                                            child: Text(
                                                                "msg_sales_vs_purchase"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeGray800)),
                                                        Container(
                                                            width: 99.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 50.h),
                                                            decoration: AppDecoration
                                                                .outlineIndigo50
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder1),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          top: 4
                                                                              .v,
                                                                          bottom: 3
                                                                              .v),
                                                                      child: Text(
                                                                          "lbl_d"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.labelMediumGray400Medium)),
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapTxtLabelfour(
                                                                            context);
                                                                      },
                                                                      child: Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 9.h,
                                                                              top: 4.v,
                                                                              bottom: 3.v),
                                                                          child: Text("lbl_w".tr, style: CustomTextStyles.labelMediumGray400Medium))),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 9
                                                                              .h,
                                                                          top: 4
                                                                              .v,
                                                                          bottom: 3
                                                                              .v),
                                                                      child: Text(
                                                                          "lbl_m"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.labelMediumGray400Medium)),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 11
                                                                              .h,
                                                                          top: 4
                                                                              .v,
                                                                          bottom: 2
                                                                              .v),
                                                                      child: Text(
                                                                          "lbl_q"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.labelMediumGray400Medium)),
                                                                  Container(
                                                                      margin: EdgeInsets.only(
                                                                          left: 5
                                                                              .h),
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal: 2
                                                                              .h,
                                                                          vertical: 3
                                                                              .v),
                                                                      decoration: AppDecoration
                                                                          .fillRed
                                                                          .copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .roundedBorder1),
                                                                      child: Text(
                                                                          "lbl_y"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.labelMediumOnPrimaryContainer))
                                                                ]))
                                                      ])),
                                                  SizedBox(height: 29.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Container(
                                                                height:
                                                                    9.adaptSize,
                                                                width:
                                                                    9.adaptSize,
                                                                decoration: BoxDecoration(
                                                                    color: appTheme
                                                                        .redA100,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            2.h))),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 8
                                                                            .h),
                                                                child: Text(
                                                                    "lbl_sales"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelSmallBluegray90001)),
                                                            Container(
                                                                height:
                                                                    9.adaptSize,
                                                                width:
                                                                    9.adaptSize,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 29
                                                                            .h),
                                                                decoration: BoxDecoration(
                                                                    color: appTheme
                                                                        .red600,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            2.h))),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 7
                                                                            .h),
                                                                child: Text(
                                                                    "lbl_purchase2"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelSmallBluegray90001))
                                                          ])),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h, top: 32.v),
                                                      child: Row(children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        3.v),
                                                            child: Text(
                                                                "lbl_100m".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall)),
                                                        RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "lbl_90"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .labelLargeGray90002),
                                                                  TextSpan(
                                                                      text: "lbl_m"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .labelLargeGray60001)
                                                                ]),
                                                            textAlign:
                                                                TextAlign.left)
                                                      ])),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 7.h,
                                                          top: 7.v,
                                                          bottom: 4.v),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 14
                                                                            .v,
                                                                        bottom: 24
                                                                            .v),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_80m"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodySmall),
                                                                      SizedBox(
                                                                          height:
                                                                              27.v),
                                                                      Text(
                                                                          "lbl_60m"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodySmall),
                                                                      SizedBox(
                                                                          height:
                                                                              27.v),
                                                                      Text(
                                                                          "lbl_40m"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodySmall),
                                                                      SizedBox(
                                                                          height:
                                                                              24.v),
                                                                      Text(
                                                                          "lbl_20m"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodySmall),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              top: 24
                                                                                  .v,
                                                                              right: 1
                                                                                  .h),
                                                                          child: Text(
                                                                              "lbl_02".tr,
                                                                              style: theme.textTheme.bodySmall))
                                                                    ])),
                                                            Expanded(
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 12
                                                                            .h),
                                                                    child: Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          SizedBox(
                                                                              height: 171.v,
                                                                              width: 260.h,
                                                                              child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                Align(
                                                                                    alignment: Alignment.topCenter,
                                                                                    child: Padding(
                                                                                        padding: EdgeInsets.only(top: 20.v),
                                                                                        child: Column(mainAxisSize: MainAxisSize.min, children: [
                                                                                          Divider(color: appTheme.blue50),
                                                                                          SizedBox(height: 37.v),
                                                                                          Divider(color: appTheme.blue50),
                                                                                          SizedBox(height: 36.v),
                                                                                          Divider(color: appTheme.blue50),
                                                                                          SizedBox(height: 37.v),
                                                                                          Divider(color: appTheme.blue50)
                                                                                        ]))),
                                                                                Align(
                                                                                    alignment: Alignment.centerLeft,
                                                                                    child: Padding(
                                                                                        padding: EdgeInsets.only(left: 45.h),
                                                                                        child: Row(children: [
                                                                                          Column(children: [
                                                                                            RichText(
                                                                                                text: TextSpan(children: [
                                                                                                  TextSpan(text: "lbl_802".tr, style: CustomTextStyles.labelLargeGray90002),
                                                                                                  TextSpan(text: "lbl_m".tr, style: CustomTextStyles.labelLargeGray60001)
                                                                                                ]),
                                                                                                textAlign: TextAlign.left),
                                                                                            SizedBox(height: 4.v),
                                                                                            Container(height: 151.v, width: 80.h, decoration: BoxDecoration(color: appTheme.redA100, borderRadius: BorderRadius.horizontal(right: Radius.circular(4.h))))
                                                                                          ]),
                                                                                          Container(height: 171.v, width: 80.h, decoration: BoxDecoration(color: appTheme.red600, borderRadius: BorderRadius.horizontal(right: Radius.circular(4.h))))
                                                                                        ])))
                                                                              ])),
                                                                          Divider(
                                                                              color: appTheme.gray20003),
                                                                          SizedBox(
                                                                              height: 13.v),
                                                                          Text(
                                                                              "lbl_2022".tr,
                                                                              style: CustomTextStyles.labelMediumGray60002)
                                                                        ])))
                                                          ]))
                                                ])))
                                  ]))))
                ]))));
  }

  /// Navigates to the chartWeeklyTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the chartWeeklyTabContainerScreen.
  onTapTxtLabelfour(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chartWeeklyTabContainerScreen,
    );
  }
}
