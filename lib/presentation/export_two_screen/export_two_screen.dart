import 'bloc/export_two_bloc.dart';
import 'models/export_two_model.dart';
import 'package:amir_s_application1/core/app_export.dart';
import 'package:amir_s_application1/widgets/custom_icon_button.dart';
import 'package:amir_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class ExportTwoScreen extends StatelessWidget {
  const ExportTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ExportTwoBloc>(
        create: (context) =>
            ExportTwoBloc(ExportTwoState(exportTwoModelObj: ExportTwoModel()))
              ..add(ExportTwoInitialEvent()),
        child: ExportTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ExportTwoBloc, ExportTwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: 360.h,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 28.v),
                        CustomIconButton(
                            height: 33.adaptSize,
                            width: 33.adaptSize,
                            padding: EdgeInsets.all(12.h),
                            decoration: IconButtonStyleHelper.fillBlack,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgClose)),
                        SizedBox(height: 16.v),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 47.h, vertical: 25.v),
                            decoration: AppDecoration.fillOnPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder18),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("lbl_export_as".tr,
                                      style: theme.textTheme.bodyMedium),
                                  SizedBox(height: 16.v),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapColumnpdfone(context);
                                            },
                                            child: Container(
                                                margin:
                                                    EdgeInsets.only(top: 5.v),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 18.h,
                                                    vertical: 6.v),
                                                decoration: AppDecoration
                                                    .outlineRedC
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder12),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(height: 2.v),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPdf,
                                                          height: 42.adaptSize,
                                                          width: 42.adaptSize),
                                                      SizedBox(height: 13.v),
                                                      Text("lbl_pdf".tr,
                                                          style: CustomTextStyles
                                                              .titleSmallDeeporangeA700)
                                                    ]))),
                                        SizedBox(
                                            height: 94.v,
                                            width: 170.h,
                                            child: Stack(
                                                alignment:
                                                    Alignment.centerRight,
                                                children: [
                                                  CustomImageView(
                                                      imagePath:
                                                          ImageConstant.imgCsv,
                                                      height: 40.adaptSize,
                                                      width: 40.adaptSize),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMicrosoftexcel,
                                                      height: 42.adaptSize,
                                                      width: 42.adaptSize),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          width: 129.h,
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  24.h,
                                                                  69.v,
                                                                  17.h,
                                                                  6.v),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    "lbl_csv"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .titleSmallGray80003),
                                                                Text(
                                                                    "lbl_xslx"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .titleSmallGray80003)
                                                              ])))
                                                ]))
                                      ]),
                                  SizedBox(height: 32.v),
                                  CustomOutlinedButton(
                                      width: 136.h,
                                      text: "lbl_export".tr,
                                      buttonStyle:
                                          CustomButtonStyles.outlineRedTL6,
                                      buttonTextStyle: CustomTextStyles
                                          .titleSmallOnPrimaryContainerSemiBold)
                                ]))
                      ]))));
    });
  }

  /// Navigates to the exportScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the exportScreen.
  onTapColumnpdfone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.exportScreen,
    );
  }
}
