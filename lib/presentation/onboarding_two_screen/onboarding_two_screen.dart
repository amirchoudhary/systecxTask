import 'bloc/onboarding_two_bloc.dart';
import 'models/onboarding_two_model.dart';
import 'package:amir_s_application1/core/app_export.dart';
import 'package:amir_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingTwoBloc>(
        create: (context) => OnboardingTwoBloc(
            OnboardingTwoState(onboardingTwoModelObj: OnboardingTwoModel()))
          ..add(OnboardingTwoInitialEvent()),
        child: OnboardingTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<OnboardingTwoBloc, OnboardingTwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: 358.h,
                  child: SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 44.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: 305.v,
                                    width: 358.h,
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGroup1Pink100,
                                              height: 261.v,
                                              width: 358.h,
                                              alignment: Alignment.topCenter),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage3,
                                              height: 225.v,
                                              width: 115.h)
                                        ])),
                                CustomImageView(
                                    svgPath: ImageConstant.imgPath,
                                    height: 15.v,
                                    width: 272.h,
                                    alignment: Alignment.centerRight,
                                    margin: EdgeInsets.only(
                                        top: 13.v, right: 33.h)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 32.h, top: 80.v),
                                    child: Text("msg_welcome_to_systecx".tr,
                                        style: CustomTextStyles
                                            .titleMediumBluegray400)),
                                Container(
                                    width: 275.h,
                                    margin: EdgeInsets.only(
                                        left: 32.h, top: 13.v, right: 49.h),
                                    child: Text("msg_trading_analytics".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.headlineMedium!
                                            .copyWith(height: 1.54))),
                                Container(
                                    height: 4.v,
                                    margin:
                                        EdgeInsets.only(left: 35.h, top: 105.v),
                                    child: AnimatedSmoothIndicator(
                                        activeIndex: 0,
                                        count: 3,
                                        effect: ScrollingDotsEffect(
                                            spacing: 7,
                                            activeDotColor: appTheme.red400,
                                            dotColor: appTheme.gray40001,
                                            dotHeight: 4.v,
                                            dotWidth: 36.h))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 32.h, top: 85.v, right: 28.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 16.v, bottom: 11.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_skip".tr,
                                                            style: CustomTextStyles
                                                                .titleMediumPrimaryContainer),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 1.v),
                                                            child: SizedBox(
                                                                width: 22.h,
                                                                child: Divider(
                                                                    color: appTheme
                                                                        .red400,
                                                                    indent:
                                                                        4.h)))
                                                      ])),
                                              CustomIconButton(
                                                  height: 51.v,
                                                  width: 54.h,
                                                  padding: EdgeInsets.all(16.h),
                                                  onTap: () {
                                                    onTapBtnArrowrightone(
                                                        context);
                                                  },
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright))
                                            ])))
                              ]))))));
    });
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the dashboardScreen.
  onTapBtnArrowrightone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardScreen,
    );
  }
}
