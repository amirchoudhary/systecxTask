import '../trade_transaction_expanded_screen/widgets/costsheet1_item_widget.dart';
import 'bloc/trade_transaction_expanded_bloc.dart';
import 'models/costsheet1_item_model.dart';
import 'models/trade_transaction_expanded_model.dart';
import 'package:amir_s_application1/core/app_export.dart';
import 'package:amir_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:amir_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:amir_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:amir_s_application1/widgets/app_bar/appbar_image_2.dart';
import 'package:amir_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:amir_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:amir_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:amir_s_application1/widgets/custom_checkbox_button.dart';
import 'package:amir_s_application1/widgets/custom_outlined_button.dart';
import 'package:amir_s_application1/widgets/custom_radio_button.dart';
import 'package:amir_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class TradeTransactionExpandedScreen extends StatelessWidget {
  const TradeTransactionExpandedScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TradeTransactionExpandedBloc>(
        create: (context) => TradeTransactionExpandedBloc(
            TradeTransactionExpandedState(
                tradeTransactionExpandedModelObj:
                    TradeTransactionExpandedModel()))
          ..add(TradeTransactionExpandedInitialEvent()),
        child: TradeTransactionExpandedScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray5001,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: 358.h,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Container(
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL18),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomAppBar(
                            leadingWidth: 35.h,
                            leading: AppbarImage(
                                svgPath: ImageConstant.imgMenu,
                                margin: EdgeInsets.only(
                                    left: 19.h, top: 7.v, bottom: 26.v)),
                            title: Container(
                                margin:
                                    EdgeInsets.only(right: 85.h, bottom: 6.v),
                                decoration: AppDecoration.column3,
                                child: Column(children: [
                                  AppbarTitle(text: "msg_trade_transaction".tr),
                                  AppbarImage1(
                                      imagePath: ImageConstant.imgImage5,
                                      margin: EdgeInsets.only(
                                          left: 30.h, top: 1.v, right: 111.h)),
                                  AppbarSubtitle(
                                      text: "lbl_systecx".tr,
                                      margin: EdgeInsets.only(
                                          left: 53.h, right: 59.h)),
                                  AppbarImage1(
                                      svgPath: ImageConstant.imgGroup1000005265,
                                      margin: EdgeInsets.only(
                                          left: 42.h,
                                          right: 114.h,
                                          bottom: 5.v))
                                ])),
                            actions: [
                              Container(
                                  margin:
                                      EdgeInsets.only(left: 114.h, top: 4.v),
                                  decoration: AppDecoration.column3,
                                  child: Row(children: [
                                    AppbarImage2(
                                        svgPath: ImageConstant.imgCheckmark,
                                        margin: EdgeInsets.only(top: 15.v)),
                                    AppbarImage2(
                                        svgPath: ImageConstant.imgAlarm,
                                        margin: EdgeInsets.only(
                                            left: 49.h,
                                            top: 2.v,
                                            bottom: 26.v)),
                                    AppbarCircleimage(
                                        imagePath: ImageConstant.imgVector20x20,
                                        margin: EdgeInsets.only(
                                            left: 19.h, bottom: 24.v))
                                  ]))
                            ]),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 16.h, top: 6.v, bottom: 13.v),
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
                                                            TradeTransactionExpandedBloc,
                                                            TradeTransactionExpandedState,
                                                            bool?>(
                                                        selector: (state) =>
                                                            state.meetings,
                                                        builder: (context,
                                                            meetings) {
                                                          return CustomCheckboxButton(
                                                              text:
                                                                  "lbl_meetings"
                                                                      .tr,
                                                              value: meetings,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          1.v),
                                                              onChange:
                                                                  (value) {
                                                                context
                                                                    .read<
                                                                        TradeTransactionExpandedBloc>()
                                                                    .add(ChangeCheckBoxEvent(
                                                                        value:
                                                                            value));
                                                              });
                                                        }),
                                                    BlocSelector<
                                                            TradeTransactionExpandedBloc,
                                                            TradeTransactionExpandedState,
                                                            bool?>(
                                                        selector: (state) =>
                                                            state.approvals,
                                                        builder: (context,
                                                            approvals) {
                                                          return CustomCheckboxButton(
                                                              text:
                                                                  "lbl_approvals"
                                                                      .tr,
                                                              value: approvals,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          1.v),
                                                              onChange:
                                                                  (value) {
                                                                context
                                                                    .read<
                                                                        TradeTransactionExpandedBloc>()
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
                                      child: BlocSelector<
                                              TradeTransactionExpandedBloc,
                                              TradeTransactionExpandedState,
                                              bool?>(
                                          selector: (state) => state.tasks,
                                          builder: (context, tasks) {
                                            return CustomCheckboxButton(
                                                text: "lbl_tasks".tr,
                                                value: tasks,
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 1.v),
                                                onChange: (value) {
                                                  context
                                                      .read<
                                                          TradeTransactionExpandedBloc>()
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
                                      child: BlocSelector<
                                              TradeTransactionExpandedBloc,
                                              TradeTransactionExpandedState,
                                              bool?>(
                                          selector: (state) =>
                                              state.tourreports,
                                          builder: (context, tourreports) {
                                            return CustomCheckboxButton(
                                                text: "lbl_tour_reports".tr,
                                                value: tourreports,
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 1.v),
                                                onChange: (value) {
                                                  context
                                                      .read<
                                                          TradeTransactionExpandedBloc>()
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
                  SizedBox(height: 28.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 14.h, right: 14.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text(
                                            "msg_estimated_cost_sheet".tr,
                                            style:
                                                theme.textTheme.titleMedium)),
                                    SizedBox(height: 19.v),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 13.h, vertical: 20.v),
                                        decoration: AppDecoration
                                            .outlineBlack900
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 1.h,
                                                          right: 59.h),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgHashtaglarge,
                                                            height:
                                                                20.adaptSize,
                                                            width:
                                                                20.adaptSize),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 5.h),
                                                            child: Text(
                                                                "msg_rescom_minerals"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .titleSmallBluegray90001))
                                                      ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 23.h,
                                                          top: 6.v,
                                                          right: 56.h),
                                                      child: Row(children: [
                                                        Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
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
                                                                "msg_tr_22_algh_trim_0001"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .bodySmallGray90002)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 7.h,
                                                                    top: 2.v,
                                                                    bottom:
                                                                        2.v),
                                                            child: Text(
                                                                "msg_27_09_2023_01_45"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .labelSmallBlack900Medium))
                                                      ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Opacity(
                                                      opacity: 0.5,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 11.h,
                                                                  top: 33.v),
                                                          child: Text(
                                                              "lbl_barite_ore"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .labelLargeGray90012)))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 31.h,
                                                      top: 19.v,
                                                      right: 28.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Opacity(
                                                            opacity: 0.9,
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgHowmanyquest,
                                                                height: 22
                                                                    .adaptSize,
                                                                width: 22
                                                                    .adaptSize)),
                                                        Spacer(flex: 53),
                                                        Opacity(
                                                            opacity: 0.9,
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgTerm,
                                                                height: 22
                                                                    .adaptSize,
                                                                width: 22
                                                                    .adaptSize)),
                                                        Spacer(flex: 46),
                                                        Opacity(
                                                            opacity: 0.9,
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgProtect,
                                                                height: 21
                                                                    .adaptSize,
                                                                width: 21
                                                                    .adaptSize)),
                                                        Opacity(
                                                            opacity: 0.9,
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVikingship,
                                                                height: 22
                                                                    .adaptSize,
                                                                width: 22
                                                                    .adaptSize,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 44
                                                                            .h)))
                                                      ])),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 9.h,
                                                          top: 6.v,
                                                          right: 18.h),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text: "lbl_3000"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.titleMediumGray900),
                                                                      TextSpan(
                                                                          text: "lbl_mt"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.labelLargeGray60003)
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 8
                                                                            .h),
                                                                child: SizedBox(
                                                                    height:
                                                                        34.v,
                                                                    child: VerticalDivider(
                                                                        width:
                                                                            1.h,
                                                                        thickness:
                                                                            1.v,
                                                                        color: appTheme
                                                                            .blueGray100,
                                                                        indent:
                                                                            1.h,
                                                                        endIndent:
                                                                            2.h))),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 10
                                                                            .h,
                                                                        top: 10
                                                                            .v,
                                                                        bottom: 9
                                                                            .v),
                                                                child: Text(
                                                                    "lbl_short_term"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelLargeGray900)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 10
                                                                            .h),
                                                                child: SizedBox(
                                                                    height:
                                                                        34.v,
                                                                    child: VerticalDivider(
                                                                        width:
                                                                            1.h,
                                                                        thickness:
                                                                            1.v,
                                                                        color: appTheme
                                                                            .blueGray100,
                                                                        indent:
                                                                            1.h,
                                                                        endIndent:
                                                                            2.h))),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 15
                                                                            .h,
                                                                        top: 10
                                                                            .v,
                                                                        bottom: 9
                                                                            .v),
                                                                child: Text(
                                                                    "lbl_fob"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelLargeGray900)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 16
                                                                            .h),
                                                                child: SizedBox(
                                                                    height:
                                                                        34.v,
                                                                    child: VerticalDivider(
                                                                        width:
                                                                            1.h,
                                                                        thickness:
                                                                            1.v,
                                                                        color: appTheme
                                                                            .blueGray100,
                                                                        indent:
                                                                            1.h,
                                                                        endIndent:
                                                                            2.h))),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 13
                                                                            .h,
                                                                        top: 11
                                                                            .v,
                                                                        bottom: 8
                                                                            .v),
                                                                child: Text(
                                                                    "lbl_by_sea"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelLargeGray900))
                                                          ]))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 11.h,
                                                      top: 36.v,
                                                      right: 11.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Opacity(
                                                            opacity: 0.5,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom: 1
                                                                            .v),
                                                                child: Text(
                                                                    "lbl_seller"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelMediumGray90011_1))),
                                                        Text(
                                                            "msg_trimex_industries"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .labelMediumGray90011)
                                                      ])),
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 8.v),
                                                  child: Divider(
                                                      color: appTheme.gray20001,
                                                      indent: 11.h,
                                                      endIndent: 14.h)),
                                              SizedBox(height: 15.v),
                                              SizedBox(
                                                  height: 29.v,
                                                  width: 278.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topRight,
                                                      children: [
                                                        BlocSelector<
                                                                TradeTransactionExpandedBloc,
                                                                TradeTransactionExpandedState,
                                                                TextEditingController?>(
                                                            selector: (state) =>
                                                                state
                                                                    .paymentmodeController,
                                                            builder: (context,
                                                                paymentmodeController) {
                                                              return CustomTextFormField(
                                                                  width: 277.h,
                                                                  controller:
                                                                      paymentmodeController,
                                                                  hintText:
                                                                      "lbl_payment_mode"
                                                                          .tr,
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .done,
                                                                  alignment:
                                                                      Alignment
                                                                          .center);
                                                            }),
                                                        Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Text(
                                                                "lbl_cod".tr,
                                                                style: CustomTextStyles
                                                                    .labelMediumGray90011))
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 12.h,
                                                      top: 14.v,
                                                      right: 12.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Opacity(
                                                            opacity: 0.5,
                                                            child: Text(
                                                                "lbl_load_port"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .labelMediumGray90011_1)),
                                                        Text("lbl_chennai".tr,
                                                            style: CustomTextStyles
                                                                .labelMediumGray90011)
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 14.v),
                                                  child: Divider(
                                                      color: appTheme.gray20001,
                                                      indent: 12.h,
                                                      endIndent: 14.h)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 13.h,
                                                      top: 17.v,
                                                      right: 13.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Opacity(
                                                            opacity: 0.5,
                                                            child: Text(
                                                                "msg_destination_port"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .labelMediumGray90011_1)),
                                                        Text("lbl_chennai".tr,
                                                            style: CustomTextStyles
                                                                .labelMediumGray90011)
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 26.v),
                                                  child: Divider(
                                                      color: appTheme
                                                          .blueGray10001,
                                                      indent: 12.h,
                                                      endIndent: 14.h)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 17.h,
                                                      top: 23.v,
                                                      right: 17.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "msg_pre_shipment_estimated"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .titleSmallBluegray90001),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLocationRed700,
                                                            height: 12.v,
                                                            width: 18.h,
                                                            radius: BorderRadius
                                                                .circular(1.h),
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 34.h,
                                                                    top: 2.v,
                                                                    bottom:
                                                                        3.v),
                                                            onTap: () {
                                                              onTapImgLocationone(
                                                                  context);
                                                            })
                                                      ])),
                                              SizedBox(height: 22.v),
                                              SizedBox(
                                                  height: 295.v,
                                                  width: 297.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            1.h,
                                                                        bottom: 261
                                                                            .v),
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal: 34
                                                                            .h),
                                                                decoration: AppDecoration
                                                                    .fillRedCc
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderBL4),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      SizedBox(
                                                                          height: 34
                                                                              .v,
                                                                          child: VerticalDivider(
                                                                              width: 1.h,
                                                                              thickness: 1.v,
                                                                              color: appTheme.red200,
                                                                              indent: 1.h)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              right: 66
                                                                                  .h),
                                                                          child: SizedBox(
                                                                              height: 34.v,
                                                                              child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.red200, indent: 1.h)))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                width: 295.h,
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        1.h,
                                                                        34.v,
                                                                        1.h,
                                                                        21.v),
                                                                padding: EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        34.h),
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                        image: fs.Svg(ImageConstant
                                                                            .imgGroup219),
                                                                        fit: BoxFit
                                                                            .cover)),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      SizedBox(
                                                                          height: 240
                                                                              .v,
                                                                          child: VerticalDivider(
                                                                              width: 1.h,
                                                                              thickness: 1.v,
                                                                              color: appTheme.gray100,
                                                                              endIndent: 15.h)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              right: 65
                                                                                  .h),
                                                                          child: SizedBox(
                                                                              height: 240.v,
                                                                              child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.gray100, endIndent: 15.h)))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            7.h,
                                                                        top: 11
                                                                            .v),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_sno"
                                                                              .tr,
                                                                          textAlign: TextAlign
                                                                              .center,
                                                                          style:
                                                                              CustomTextStyles.labelMediumOnPrimaryContainerBold),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 8
                                                                                  .h,
                                                                              top: 25
                                                                                  .v),
                                                                          child: Text(
                                                                              "lbl_1".tr,
                                                                              style: CustomTextStyles.labelMediumBluegray900)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 7
                                                                                  .h,
                                                                              top: 24
                                                                                  .v),
                                                                          child: Text(
                                                                              "lbl_22".tr,
                                                                              style: CustomTextStyles.labelMediumBluegray900)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 7
                                                                                  .h,
                                                                              top: 24
                                                                                  .v),
                                                                          child: Text(
                                                                              "lbl_3".tr,
                                                                              style: CustomTextStyles.labelMediumBluegray900)),
                                                                      SizedBox(
                                                                          height:
                                                                              26.v),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Text(
                                                                              "lbl_4".tr,
                                                                              style: CustomTextStyles.labelMediumBluegray900)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 7
                                                                                  .h,
                                                                              top: 24
                                                                                  .v),
                                                                          child: Text(
                                                                              "lbl_5".tr,
                                                                              style: CustomTextStyles.labelMediumBluegray900)),
                                                                      SizedBox(
                                                                          height:
                                                                              23.v),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Text(
                                                                              "lbl_6".tr,
                                                                              style: CustomTextStyles.labelMediumBluegray900))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 11
                                                                            .v,
                                                                        right: 11
                                                                            .h),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_est_amount"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.labelMediumOnPrimaryContainerBold),
                                                                      SizedBox(
                                                                          height:
                                                                              25.v),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child: RichText(
                                                                              text: TextSpan(children: [
                                                                                TextSpan(text: "lbl_usd".tr, style: theme.textTheme.labelSmall),
                                                                                TextSpan(text: " "),
                                                                                TextSpan(text: "lbl_1_56".tr, style: CustomTextStyles.labelMediumGray900),
                                                                                TextSpan(text: "lbl_m".tr, style: CustomTextStyles.labelMediumGray60003)
                                                                              ]),
                                                                              textAlign: TextAlign.left)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 6.h,
                                                                              top: 24.v),
                                                                          child: RichText(
                                                                              text: TextSpan(children: [
                                                                                TextSpan(text: "lbl_usd".tr, style: theme.textTheme.labelSmall),
                                                                                TextSpan(text: " "),
                                                                                TextSpan(text: "lbl_16_25".tr, style: CustomTextStyles.labelMediumGray900)
                                                                              ]),
                                                                              textAlign: TextAlign.left)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 6.h,
                                                                              top: 26.v),
                                                                          child: RichText(
                                                                              text: TextSpan(children: [
                                                                                TextSpan(text: "lbl_usd".tr, style: theme.textTheme.labelSmall),
                                                                                TextSpan(text: " "),
                                                                                TextSpan(text: "lbl_5_9".tr, style: CustomTextStyles.labelMediumGray900),
                                                                                TextSpan(text: "lbl_k".tr, style: CustomTextStyles.labelMediumGray60003)
                                                                              ]),
                                                                              textAlign: TextAlign.left)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 6.h,
                                                                              top: 25.v),
                                                                          child: RichText(
                                                                              text: TextSpan(children: [
                                                                                TextSpan(text: "lbl_usd".tr, style: theme.textTheme.labelSmall),
                                                                                TextSpan(text: " "),
                                                                                TextSpan(text: "lbl_1_8".tr, style: CustomTextStyles.labelMediumGray900),
                                                                                TextSpan(text: "lbl_k".tr, style: CustomTextStyles.labelMediumGray60003)
                                                                              ]),
                                                                              textAlign: TextAlign.left)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 6.h,
                                                                              top: 26.v),
                                                                          child: RichText(
                                                                              text: TextSpan(children: [
                                                                                TextSpan(text: "lbl_usd".tr, style: theme.textTheme.labelSmall),
                                                                                TextSpan(text: " "),
                                                                                TextSpan(text: "lbl_1_7".tr, style: CustomTextStyles.labelMediumGray900),
                                                                                TextSpan(text: "lbl_k".tr, style: CustomTextStyles.labelMediumGray60003)
                                                                              ]),
                                                                              textAlign: TextAlign.left)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 6.h,
                                                                              top: 26.v),
                                                                          child: RichText(
                                                                              text: TextSpan(children: [
                                                                                TextSpan(text: "lbl_usd".tr, style: theme.textTheme.labelSmall),
                                                                                TextSpan(text: " "),
                                                                                TextSpan(text: "lbl_1_4".tr, style: CustomTextStyles.labelMediumGray900),
                                                                                TextSpan(text: "lbl_k".tr, style: CustomTextStyles.labelMediumGray60003)
                                                                              ]),
                                                                              textAlign: TextAlign.left))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 49
                                                                            .h,
                                                                        top: 12
                                                                            .v),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 5
                                                                                  .h),
                                                                          child: Text(
                                                                              "lbl_description".tr,
                                                                              style: CustomTextStyles.labelMediumOnPrimaryContainerBold)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 3
                                                                                  .h,
                                                                              top: 26
                                                                                  .v),
                                                                          child: Text(
                                                                              "msg_buying_price_fob".tr,
                                                                              style: CustomTextStyles.labelMediumGray900Medium)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 2
                                                                                  .h,
                                                                              top: 24
                                                                                  .v),
                                                                          child: Text(
                                                                              "lbl_ocean_freight".tr,
                                                                              style: CustomTextStyles.labelMediumGray900Medium)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 2
                                                                                  .h,
                                                                              top: 23
                                                                                  .v),
                                                                          child: Text(
                                                                              "lbl_finance_cost".tr,
                                                                              style: CustomTextStyles.labelMediumGray900Medium)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 2
                                                                                  .h,
                                                                              top: 26
                                                                                  .v),
                                                                          child: Text(
                                                                              "msg_insurance_cost_cargo".tr,
                                                                              style: CustomTextStyles.labelMediumGray900Medium)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 1
                                                                                  .h,
                                                                              top: 25
                                                                                  .v),
                                                                          child: Text(
                                                                              "msg_insurance_cost_cl".tr,
                                                                              style: CustomTextStyles.labelMediumGray900Medium)),
                                                                      SizedBox(
                                                                          height:
                                                                              25.v),
                                                                      Text(
                                                                          "msg_buying_price_fob"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.labelMediumGray900Medium)
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                margin: EdgeInsets.only(
                                                                    right: 1.h),
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            2.h,
                                                                        vertical: 1
                                                                            .v),
                                                                decoration: AppDecoration
                                                                    .fillRedCc
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderBL4),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Divider(
                                                                          color: appTheme
                                                                              .red300,
                                                                          indent:
                                                                              2.h),
                                                                      Padding(
                                                                          padding: EdgeInsets.fromLTRB(
                                                                              13.h,
                                                                              8.v,
                                                                              21.h,
                                                                              8.v),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Text("lbl_total".tr,
                                                                                style: CustomTextStyles.labelLargeOnPrimaryContainer),
                                                                            RichText(
                                                                                text: TextSpan(children: [
                                                                                  TextSpan(text: "lbl_usd".tr, style: CustomTextStyles.labelMediumOnPrimaryContainer_1),
                                                                                  TextSpan(text: " "),
                                                                                  TextSpan(text: "lbl_3_1".tr, style: CustomTextStyles.titleSmallOnPrimaryContainer),
                                                                                  TextSpan(text: " "),
                                                                                  TextSpan(text: "lbl_m".tr, style: CustomTextStyles.labelLargeOnPrimaryContainer_1)
                                                                                ]),
                                                                                textAlign: TextAlign.left)
                                                                          ]))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: SizedBox(
                                                                height: 225.v,
                                                                child: VerticalDivider(
                                                                    width: 1.h,
                                                                    thickness:
                                                                        1.v,
                                                                    color: appTheme
                                                                        .gray20002)))
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 9.h,
                                                      top: 28.v,
                                                      right: 3.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                            child:
                                                                CustomOutlinedButton(
                                                                    text:
                                                                        "msg_export_cost_sheet"
                                                                            .tr,
                                                                    margin: EdgeInsets.only(
                                                                        right: 9
                                                                            .h),
                                                                    leftIcon: Container(
                                                                        margin: EdgeInsets.only(
                                                                            right: 4
                                                                                .h),
                                                                        child: CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgDownload)),
                                                                    onTap: () {
                                                                      onTapExportcost(
                                                                          context);
                                                                    })),
                                                        Expanded(
                                                            child: Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 9
                                                                            .h),
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            7.h,
                                                                        vertical: 10
                                                                            .v),
                                                                decoration: AppDecoration
                                                                    .fillRed700
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder6),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgIcons8approval901,
                                                                          height: 16
                                                                              .adaptSize,
                                                                          width: 16
                                                                              .adaptSize,
                                                                          margin:
                                                                              EdgeInsets.only(bottom: 1.v)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 4
                                                                                  .h,
                                                                              bottom: 1
                                                                                  .v),
                                                                          child: Text(
                                                                              "msg_send_for_approval".tr,
                                                                              style: CustomTextStyles.labelMediumOnPrimaryContainer11))
                                                                    ])))
                                                      ]))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 47.v),
                                        child: Text("lbl_updates".tr,
                                            style: CustomTextStyles
                                                .titleMediumGray90001)),
                                    SizedBox(height: 20.v),
                                    Container(
                                        width: 328.h,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 16.v),
                                        decoration: AppDecoration
                                            .outlineBlack900
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              SizedBox(height: 10.v),
                                              SizedBox(
                                                  height: 337.v,
                                                  width: 312.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        SizedBox(
                                                                            height:
                                                                                34.v,
                                                                            width: 167.h,
                                                                            child: Stack(alignment: Alignment.bottomRight, children: [
                                                                              Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Row(children: [
                                                                                    CustomImageView(imagePath: ImageConstant.imgVector31x31, height: 31.adaptSize, width: 31.adaptSize, radius: BorderRadius.circular(15.h), margin: EdgeInsets.only(bottom: 3.v)),
                                                                                    Padding(
                                                                                        padding: EdgeInsets.only(left: 10.h),
                                                                                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                          Text("lbl_freight_charge".tr, style: theme.textTheme.labelLarge),
                                                                                          SizedBox(height: 4.v),
                                                                                          Text("lbl_by_admin".tr, style: CustomTextStyles.bodySmallGray500)
                                                                                        ]))
                                                                                  ])),
                                                                              Align(alignment: Alignment.bottomRight, child: Text("lbl_on_02_08_2023".tr, style: CustomTextStyles.bodySmallBlack900))
                                                                            ])),
                                                                        BlocSelector<
                                                                                TradeTransactionExpandedBloc,
                                                                                TradeTransactionExpandedState,
                                                                                String?>(
                                                                            selector: (state) =>
                                                                                state.radioGroup,
                                                                            builder: (context, radioGroup) {
                                                                              return CustomRadioButton(
                                                                                  text: "lbl_updated".tr,
                                                                                  value: "lbl_updated".tr ?? "",
                                                                                  groupValue: radioGroup,
                                                                                  margin: EdgeInsets.only(left: 39.h, bottom: 13.v),
                                                                                  padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 1.v),
                                                                                  onChange: (value) {
                                                                                    context.read<TradeTransactionExpandedBloc>().add(ChangeRadioButtonEvent(value: value));
                                                                                  });
                                                                            })
                                                                      ]),
                                                                  SizedBox(
                                                                      height:
                                                                          35.v),
                                                                  BlocBuilder<
                                                                          TradeTransactionExpandedBloc,
                                                                          TradeTransactionExpandedState>(
                                                                      builder:
                                                                          (context,
                                                                              state) {
                                                                    return state
                                                                            .tradeTransactionExpandedModelObj!
                                                                            .radioList
                                                                            .isNotEmpty
                                                                        ? Column(
                                                                            children: [
                                                                                CustomRadioButton(
                                                                                    text: "lbl_updated".tr,
                                                                                    value: state.tradeTransactionExpandedModelObj?.radioList[0] ?? "",
                                                                                    groupValue: state.radioGroup1,
                                                                                    padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 1.v),
                                                                                    onChange: (value) {
                                                                                      context.read<TradeTransactionExpandedBloc>().add(ChangeRadioButton1Event(value: value));
                                                                                    }),
                                                                                CustomRadioButton(
                                                                                    text: "lbl_updated".tr,
                                                                                    value: state.tradeTransactionExpandedModelObj?.radioList[1] ?? "",
                                                                                    groupValue: state.radioGroup1,
                                                                                    margin: EdgeInsets.only(top: 52.v),
                                                                                    padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 1.v),
                                                                                    onChange: (value) {
                                                                                      context.read<TradeTransactionExpandedBloc>().add(ChangeRadioButton1Event(value: value));
                                                                                    }),
                                                                                CustomRadioButton(
                                                                                    text: "lbl_updated".tr,
                                                                                    value: state.tradeTransactionExpandedModelObj?.radioList[2] ?? "",
                                                                                    groupValue: state.radioGroup1,
                                                                                    margin: EdgeInsets.only(top: 49.v),
                                                                                    padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 1.v),
                                                                                    onChange: (value) {
                                                                                      context.read<TradeTransactionExpandedBloc>().add(ChangeRadioButton1Event(value: value));
                                                                                    }),
                                                                                CustomRadioButton(
                                                                                    text: "lbl_updated".tr,
                                                                                    value: state.tradeTransactionExpandedModelObj?.radioList[3] ?? "",
                                                                                    groupValue: state.radioGroup1,
                                                                                    margin: EdgeInsets.only(top: 50.v),
                                                                                    padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 1.v),
                                                                                    onChange: (value) {
                                                                                      context.read<TradeTransactionExpandedBloc>().add(ChangeRadioButton1Event(value: value));
                                                                                    })
                                                                              ])
                                                                        : Container();
                                                                  })
                                                                ])),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 16
                                                                            .h,
                                                                        bottom: 23
                                                                            .v),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      BlocSelector<
                                                                              TradeTransactionExpandedBloc,
                                                                              TradeTransactionExpandedState,
                                                                              TradeTransactionExpandedModel?>(
                                                                          selector: (state) => state
                                                                              .tradeTransactionExpandedModelObj,
                                                                          builder:
                                                                              (context, tradeTransactionExpandedModelObj) {
                                                                            return ListView.separated(
                                                                                physics: NeverScrollableScrollPhysics(),
                                                                                shrinkWrap: true,
                                                                                separatorBuilder: (context, index) {
                                                                                  return SizedBox(height: 33.v);
                                                                                },
                                                                                itemCount: tradeTransactionExpandedModelObj?.costsheet1ItemList.length ?? 0,
                                                                                itemBuilder: (context, index) {
                                                                                  Costsheet1ItemModel model = tradeTransactionExpandedModelObj?.costsheet1ItemList[index] ?? Costsheet1ItemModel();
                                                                                  return Costsheet1ItemWidget(model);
                                                                                });
                                                                          }),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              top: 57
                                                                                  .v,
                                                                              right: 6
                                                                                  .h),
                                                                          child: Text(
                                                                              "lbl_on_02_08_2023".tr,
                                                                              style: CustomTextStyles.bodySmallBlack900))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 16
                                                                            .h,
                                                                        bottom: 22
                                                                            .v),
                                                                child: Row(
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector31x31,
                                                                          height: 31
                                                                              .adaptSize,
                                                                          width: 31
                                                                              .adaptSize,
                                                                          radius: BorderRadius.circular(15
                                                                              .h),
                                                                          margin:
                                                                              EdgeInsets.only(bottom: 3.v)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 10
                                                                                  .h),
                                                                          child: Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text("msg_shipping_contract".tr, style: theme.textTheme.labelLarge),
                                                                                SizedBox(height: 4.v),
                                                                                Text("lbl_by_admin".tr, style: CustomTextStyles.bodySmallGray500)
                                                                              ]))
                                                                    ])))
                                                      ])),
                                              SizedBox(height: 16.v),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                      "msg_view_more_updates"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .labelLargeRed400
                                                          .copyWith(
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline)))
                                            ]))
                                  ]))))
                ]))));
  }

  /// Navigates to the tradeTransactionScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the tradeTransactionScreen.
  onTapImgLocationone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.tradeTransactionScreen,
    );
  }

  /// Navigates to the exportScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the exportScreen.
  onTapExportcost(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.exportScreen,
    );
  }
}
