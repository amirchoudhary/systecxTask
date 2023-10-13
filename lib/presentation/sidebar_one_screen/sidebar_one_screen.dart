import 'bloc/sidebar_one_bloc.dart';
import 'models/sidebar_one_model.dart';
import 'package:amir_s_application1/core/app_export.dart';
import 'package:amir_s_application1/widgets/custom_checkbox_button.dart';
import 'package:flutter/material.dart';

class SidebarOneScreen extends StatelessWidget {
  const SidebarOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SidebarOneBloc>(
        create: (context) => SidebarOneBloc(
            SidebarOneState(sidebarOneModelObj: SidebarOneModel()))
          ..add(SidebarOneInitialEvent()),
        child: SidebarOneScreen());
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
                                  EdgeInsets.only(right: 10.h, bottom: 133.v),
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
                                        height: 95.v,
                                        width: 278.h,
                                        margin: EdgeInsets.only(
                                            top: 24.v, right: 7.h),
                                        child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: SizedBox(
                                                      height: 91.v,
                                                      width: 259.h,
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child: Container(
                                                                    padding: EdgeInsets.symmetric(
                                                                        horizontal: 55
                                                                            .h,
                                                                        vertical: 11
                                                                            .v),
                                                                    decoration: AppDecoration
                                                                        .fillPrimary
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder12),
                                                                    child: Text(
                                                                        "lbl_dashboard"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .titleSmallRed400SemiBold))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            SizedBox(
                                                                                height: 43.v,
                                                                                child: VerticalDivider(width: 3.h, thickness: 3.v, color: appTheme.red400)),
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgDashboardlayout,
                                                                                height: 19.adaptSize,
                                                                                width: 19.adaptSize,
                                                                                margin: EdgeInsets.only(left: 32.h, top: 11.v, bottom: 13.v))
                                                                          ]),
                                                                      SizedBox(
                                                                          height:
                                                                              23.v),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .centerRight,
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              children: [
                                                                                Opacity(opacity: 0.4, child: CustomImageView(imagePath: ImageConstant.imgStaff, height: 23.adaptSize, width: 23.adaptSize)),
                                                                                Padding(padding: EdgeInsets.only(left: 18.h, bottom: 4.v), child: Text("lbl_customer".tr, style: theme.textTheme.titleSmall))
                                                                              ]))
                                                                    ]))
                                                          ]))),
                                              Opacity(
                                                  opacity: 0.5,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgExpandarrow,
                                                      height: 28.adaptSize,
                                                      width: 28.adaptSize,
                                                      alignment: Alignment
                                                          .bottomRight))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 32.h, top: 30.v, right: 7.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Opacity(
                                                  opacity: 0.4,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgVector,
                                                      height: 16.v,
                                                      width: 18.h,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 6.v))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 22.h,
                                                      top: 2.v,
                                                      bottom: 6.v),
                                                  child: Text("lbl_supplier".tr,
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
                                            left: 28.h, top: 28.v, right: 7.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Opacity(
                                                  opacity: 0.4,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMuseum,
                                                      height: 22.adaptSize,
                                                      width: 22.adaptSize,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 3.v))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 22.h, bottom: 8.v),
                                                  child: Text(
                                                      "msg_financial_institutions"
                                                          .tr,
                                                      style: theme.textTheme
                                                          .titleSmall)),
                                              Opacity(
                                                  opacity: 0.5,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgExpandarrow,
                                                      height: 28.adaptSize,
                                                      width: 28.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 13.h)))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 29.h, top: 28.v, right: 7.h),
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
                                                          .imgProduct,
                                                      height: 21.adaptSize,
                                                      width: 21.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 3.v,
                                                          bottom: 4.v))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 22.h, bottom: 8.v),
                                                  child: Text("lbl_products".tr,
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
                                            left: 32.h, top: 26.v, right: 7.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BlocSelector<SidebarOneBloc,
                                                      SidebarOneState, bool?>(
                                                  selector: (state) =>
                                                      state.tradingNameEnUs,
                                                  builder: (context,
                                                      tradingNameEnUs) {
                                                    return CustomCheckboxButton(
                                                        text: "lbl_trading".tr,
                                                        value: tradingNameEnUs,
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                vertical: 4.v),
                                                        textStyle: theme
                                                            .textTheme
                                                            .titleSmall,
                                                        onChange: (value) {
                                                          context
                                                              .read<
                                                                  SidebarOneBloc>()
                                                              .add(ChangeCheckBoxEvent(
                                                                  value:
                                                                      value));
                                                        });
                                                  }),
                                              Opacity(
                                                  opacity: 0.5,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgExpandarrow,
                                                      height: 28.adaptSize,
                                                      width: 28.adaptSize,
                                                      onTap: () {
                                                        onTapImgExpandarrow(
                                                            context);
                                                      }))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 32.h, top: 30.v, right: 7.h),
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
                                                left: 32.h, top: 31.v),
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

  /// Navigates to the sidebarScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the sidebarScreen.
  onTapImgExpandarrow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sidebarScreen,
    );
  }
}
