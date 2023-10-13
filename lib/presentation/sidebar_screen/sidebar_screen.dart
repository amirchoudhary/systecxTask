import 'bloc/sidebar_bloc.dart';
import 'models/sidebar_model.dart';
import 'package:amir_s_application1/core/app_export.dart';
import 'package:amir_s_application1/widgets/custom_checkbox_button.dart';
import 'package:amir_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SidebarBloc>(
        create: (context) =>
            SidebarBloc(SidebarState(sidebarModelObj: SidebarModel()))
              ..add(SidebarInitialEvent()),
        child: SidebarScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 295.h,
                child: Column(children: [
                  SizedBox(height: 44.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding:
                                  EdgeInsets.only(right: 10.h, bottom: 36.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage4,
                                        height: 49.v,
                                        width: 140.h,
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(left: 29.h)),
                                    Container(
                                        height: 415.v,
                                        width: 278.h,
                                        margin: EdgeInsets.only(
                                            top: 35.v, right: 7.h),
                                        child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 35.h),
                                                            child: Row(
                                                                children: [
                                                                  Opacity(
                                                                      opacity:
                                                                          0.4,
                                                                      child: CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgDashboardlayout,
                                                                          height: 19
                                                                              .adaptSize,
                                                                          width:
                                                                              19.adaptSize)),
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapTxtTitle(
                                                                            context);
                                                                      },
                                                                      child: Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 18
                                                                                  .h),
                                                                          child: Text(
                                                                              "lbl_dashboard".tr,
                                                                              style: theme.textTheme.titleSmall)))
                                                                ])),
                                                        SizedBox(height: 36.v),
                                                        SizedBox(
                                                            height: 259.v,
                                                            width: 236.h,
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: Column(
                                                                          mainAxisSize: MainAxisSize
                                                                              .min,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children: [
                                                                            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                              Opacity(opacity: 0.4, child: CustomImageView(imagePath: ImageConstant.imgStaff, height: 23.adaptSize, width: 23.adaptSize)),
                                                                              Padding(padding: EdgeInsets.only(left: 18.h, bottom: 4.v), child: Text("lbl_customer".tr, style: theme.textTheme.titleSmall))
                                                                            ]),
                                                                            Padding(
                                                                                padding: EdgeInsets.only(top: 36.v, right: 11.h),
                                                                                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                                  Opacity(opacity: 0.4, child: CustomImageView(svgPath: ImageConstant.imgVector, height: 16.v, width: 18.h, margin: EdgeInsets.only(top: 3.v))),
                                                                                  Padding(padding: EdgeInsets.only(left: 22.h), child: Text("lbl_supplier".tr, style: theme.textTheme.titleSmall))
                                                                                ])),
                                                                            Padding(
                                                                                padding: EdgeInsets.only(top: 90.v, right: 6.h),
                                                                                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                                  Opacity(opacity: 0.4, child: CustomImageView(imagePath: ImageConstant.imgProduct, height: 21.adaptSize, width: 21.adaptSize, margin: EdgeInsets.only(top: 2.v))),
                                                                                  Padding(padding: EdgeInsets.only(left: 22.h, bottom: 4.v), child: Text("lbl_products".tr, style: theme.textTheme.titleSmall))
                                                                                ])),
                                                                            SizedBox(height: 23.v),
                                                                            Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                  SizedBox(height: 43.v, child: VerticalDivider(width: 3.h, thickness: 3.v, color: appTheme.red400)),
                                                                                  BlocSelector<SidebarBloc, SidebarState, bool?>(
                                                                                      selector: (state) => state.tradingNameEnUs,
                                                                                      builder: (context, tradingNameEnUs) {
                                                                                        return CustomCheckboxButton(
                                                                                            text: "lbl_trading".tr,
                                                                                            value: tradingNameEnUs,
                                                                                            margin: EdgeInsets.only(left: 29.h, top: 11.v, bottom: 12.v),
                                                                                            textStyle: theme.textTheme.titleSmall,
                                                                                            onChange: (value) {
                                                                                              context.read<SidebarBloc>().add(ChangeCheckBoxEvent(value: value));
                                                                                            });
                                                                                      })
                                                                                ]))
                                                                          ])),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      child: Row(
                                                                          mainAxisAlignment: MainAxisAlignment
                                                                              .center,
                                                                          crossAxisAlignment: CrossAxisAlignment
                                                                              .start,
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            Opacity(
                                                                                opacity: 0.4,
                                                                                child: CustomImageView(imagePath: ImageConstant.imgMuseum, height: 22.adaptSize, width: 22.adaptSize, margin: EdgeInsets.only(top: 2.v))),
                                                                            Padding(
                                                                                padding: EdgeInsets.only(left: 22.h, bottom: 5.v),
                                                                                child: Text("msg_financial_institutions".tr, style: theme.textTheme.titleSmall))
                                                                          ]))
                                                                ])),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 20
                                                                            .v,
                                                                        right: 14
                                                                            .h),
                                                                child: Text(
                                                                    "msg_customer_requirement"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .titleSmall14))),
                                                        CustomElevatedButton(
                                                            height: 43.v,
                                                            text:
                                                                "msg_trade_transactions"
                                                                    .tr,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 54.h,
                                                                    top: 18.v),
                                                            buttonStyle:
                                                                CustomButtonStyles
                                                                    .fillPrimary,
                                                            buttonTextStyle:
                                                                CustomTextStyles
                                                                    .titleSmallRed400,
                                                            onTap: () {
                                                              onTapTrade(
                                                                  context);
                                                            },
                                                            alignment: Alignment
                                                                .centerRight)
                                                      ])),
                                              Opacity(
                                                  opacity: 0.5,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgExpandarrow,
                                                      height: 28.adaptSize,
                                                      width: 28.adaptSize,
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      margin: EdgeInsets.only(
                                                          bottom: 162.v))),
                                              Opacity(
                                                  opacity: 0.5,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgExpandarrow,
                                                      height: 28.adaptSize,
                                                      width: 28.adaptSize,
                                                      alignment:
                                                          Alignment.topRight,
                                                      margin: EdgeInsets.only(
                                                          top: 169.v))),
                                              Opacity(
                                                  opacity: 0.5,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgExpandarrow,
                                                      height: 28.adaptSize,
                                                      width: 28.adaptSize,
                                                      alignment:
                                                          Alignment.topRight,
                                                      margin: EdgeInsets.only(
                                                          top: 113.v))),
                                              Opacity(
                                                  opacity: 0.5,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgExpandarrow,
                                                      height: 28.adaptSize,
                                                      width: 28.adaptSize,
                                                      alignment:
                                                          Alignment.topRight,
                                                      margin: EdgeInsets.only(
                                                          top: 55.v))),
                                              Opacity(
                                                  opacity: 0.5,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgExpandarrow28x28,
                                                      height: 28.adaptSize,
                                                      width: 28.adaptSize,
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      margin: EdgeInsets.only(
                                                          bottom: 108.v),
                                                      onTap: () {
                                                        onTapImgExpandarrow(
                                                            context);
                                                      }))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 31.h, top: 19.v, right: 7.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Opacity(
                                                  opacity: 0.4,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgInvoice,
                                                      height: 19.adaptSize,
                                                      width: 19.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 4.v,
                                                          bottom: 5.v))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 21.h, bottom: 8.v),
                                                  child: Text("lbl_invoices".tr,
                                                      style: theme.textTheme
                                                          .titleSmall)),
                                              Spacer(),
                                              Opacity(
                                                  opacity: 0.5,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgExpandarrow,
                                                      height: 28.adaptSize,
                                                      width: 28.adaptSize))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 31.h, top: 28.v, right: 7.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Opacity(
                                                  opacity: 0.4,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgDownload20x20,
                                                      height: 20.adaptSize,
                                                      width: 20.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 3.v,
                                                          bottom: 5.v))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 21.h, bottom: 7.v),
                                                  child: Text(
                                                      "lbl_downloads".tr,
                                                      style: theme.textTheme
                                                          .titleSmall)),
                                              Spacer(),
                                              Opacity(
                                                  opacity: 0.5,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgExpandarrow,
                                                      height: 28.adaptSize,
                                                      width: 28.adaptSize))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 31.h, top: 28.v, right: 7.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Opacity(
                                                  opacity: 0.4,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGraphreport,
                                                      height: 20.adaptSize,
                                                      width: 20.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 6.v))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 21.h,
                                                      top: 6.v,
                                                      bottom: 2.v),
                                                  child: Text("lbl_reports".tr,
                                                      style: theme.textTheme
                                                          .titleSmall)),
                                              Spacer(),
                                              Opacity(
                                                  opacity: 0.5,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgExpandarrow,
                                                      height: 28.adaptSize,
                                                      width: 28.adaptSize))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(top: 30.v),
                                        child: Divider(
                                            color: appTheme.gray300,
                                            indent: 30.h)),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 31.h, top: 31.v),
                                            child: Row(children: [
                                              Opacity(
                                                  opacity: 0.4,
                                                  child: CustomImageView(
                                                      imagePath:
                                                          ImageConstant.imgChat,
                                                      height: 20.adaptSize,
                                                      width: 20.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          bottom: 1.v))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20.h, top: 2.v),
                                                  child: Text("lbl_faq".tr,
                                                      style: theme.textTheme
                                                          .titleSmall))
                                            ])))
                                  ]))))
                ]))));
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the dashboardScreen.
  onTapTxtTitle(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardScreen,
    );
  }

  /// Navigates to the tradeTransactionScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the tradeTransactionScreen.
  onTapTrade(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.tradeTransactionScreen,
    );
  }

  /// Navigates to the sidebarOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the sidebarOneScreen.
  onTapImgExpandarrow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sidebarOneScreen,
    );
  }
}
