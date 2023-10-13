import 'bloc/chart_weekly_bloc.dart';
import 'models/chart_weekly_model.dart';
import 'package:amir_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChartWeeklyPage extends StatefulWidget {
  const ChartWeeklyPage({Key? key})
      : super(
          key: key,
        );

  @override
  ChartWeeklyPageState createState() => ChartWeeklyPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ChartWeeklyBloc>(
      create: (context) => ChartWeeklyBloc(ChartWeeklyState(
        chartWeeklyModelObj: ChartWeeklyModel(),
      ))
        ..add(ChartWeeklyInitialEvent()),
      child: ChartWeeklyPage(),
    );
  }
}

class ChartWeeklyPageState extends State<ChartWeeklyPage>
    with AutomaticKeepAliveClientMixin<ChartWeeklyPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ChartWeeklyBloc, ChartWeeklyState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(right: 37.h),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 18.h,
                          top: 30.v,
                          right: 14.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 9.adaptSize,
                                    width: 9.adaptSize,
                                    decoration: BoxDecoration(
                                      color: appTheme.redA100,
                                      borderRadius: BorderRadius.circular(
                                        2.h,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 9.h),
                                    child: Text(
                                      "lbl_sales".tr,
                                      style: CustomTextStyles
                                          .labelSmallBluegray90001,
                                    ),
                                  ),
                                  Container(
                                    height: 9.adaptSize,
                                    width: 9.adaptSize,
                                    margin: EdgeInsets.only(left: 29.h),
                                    decoration: BoxDecoration(
                                      color: appTheme.red600,
                                      borderRadius: BorderRadius.circular(
                                        2.h,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text(
                                      "lbl_purchase2".tr,
                                      style: CustomTextStyles
                                          .labelSmallBluegray90001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 32.v),
                            Text(
                              "lbl_100m".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 3.h,
                                top: 26.v,
                              ),
                              child: Text(
                                "lbl_80m".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 3.h,
                                top: 27.v,
                              ),
                              child: Text(
                                "lbl_60m".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 3.h,
                                top: 27.v,
                              ),
                              child: Text(
                                "lbl_40m".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 3.h,
                                top: 24.v,
                              ),
                              child: Text(
                                "lbl_20m".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 24.v,
                              ),
                              child: Text(
                                "lbl_02".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            SizedBox(height: 11.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "lbl_2022".tr,
                                style: CustomTextStyles.labelMediumGray60002,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
