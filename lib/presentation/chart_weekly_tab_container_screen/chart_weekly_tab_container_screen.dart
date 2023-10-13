import 'bloc/chart_weekly_tab_container_bloc.dart';
import 'models/chart_weekly_tab_container_model.dart';
import 'package:amir_s_application1/core/app_export.dart';
import 'package:amir_s_application1/presentation/chart_weekly_page/chart_weekly_page.dart';
import 'package:flutter/material.dart';

class ChartWeeklyTabContainerScreen extends StatefulWidget {
  const ChartWeeklyTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ChartWeeklyTabContainerScreenState createState() =>
      ChartWeeklyTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ChartWeeklyTabContainerBloc>(
      create: (context) =>
          ChartWeeklyTabContainerBloc(ChartWeeklyTabContainerState(
        chartWeeklyTabContainerModelObj: ChartWeeklyTabContainerModel(),
      ))
            ..add(ChartWeeklyTabContainerInitialEvent()),
      child: ChartWeeklyTabContainerScreen(),
    );
  }
}

class ChartWeeklyTabContainerScreenState
    extends State<ChartWeeklyTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ChartWeeklyTabContainerBloc,
        ChartWeeklyTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 295.h,
              child: Container(
                decoration: AppDecoration.outlineOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 17.v,
                        right: 53.h,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCurrency4,
                            height: 17.adaptSize,
                            width: 17.adaptSize,
                            margin: EdgeInsets.only(top: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 7.h,
                              top: 4.v,
                            ),
                            child: Text(
                              "msg_sales_vs_purchase".tr,
                              style: CustomTextStyles.labelLargeGray800,
                            ),
                          ),
                          Container(
                            height: 20.v,
                            width: 99.h,
                            margin: EdgeInsets.only(left: 50.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                3.h,
                              ),
                              border: Border.all(
                                color: appTheme.indigo50,
                                width: 1.h,
                              ),
                            ),
                            child: TabBar(
                              controller: tabviewController,
                              labelPadding: EdgeInsets.zero,
                              labelColor: theme.colorScheme.onPrimaryContainer,
                              labelStyle: TextStyle(
                                fontSize: 10.fSize,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                              ),
                              unselectedLabelColor: appTheme.gray400,
                              unselectedLabelStyle: TextStyle(
                                fontSize: 10.fSize,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                              ),
                              indicator: BoxDecoration(
                                color: appTheme.red600,
                                borderRadius: BorderRadius.circular(
                                  3.h,
                                ),
                              ),
                              tabs: [
                                Tab(
                                  child: Text(
                                    "lbl_d".tr,
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "lbl_w".tr,
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "lbl_m".tr,
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "lbl_q".tr,
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "lbl_y".tr,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 37.h),
                      height: 315.v,
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          ChartWeeklyPage.builder(context),
                          ChartWeeklyPage.builder(context),
                          ChartWeeklyPage.builder(context),
                          ChartWeeklyPage.builder(context),
                          ChartWeeklyPage.builder(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
