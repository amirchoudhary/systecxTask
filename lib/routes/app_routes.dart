import 'package:flutter/material.dart';
import 'package:amir_s_application1/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:amir_s_application1/presentation/sidebar_one_screen/sidebar_one_screen.dart';
import 'package:amir_s_application1/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:amir_s_application1/presentation/trade_transaction_screen/trade_transaction_screen.dart';
import 'package:amir_s_application1/presentation/trade_transaction_expanded_screen/trade_transaction_expanded_screen.dart';
import 'package:amir_s_application1/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:amir_s_application1/presentation/export_screen/export_screen.dart';
import 'package:amir_s_application1/presentation/export_two_screen/export_two_screen.dart';
import 'package:amir_s_application1/presentation/sidebar_screen/sidebar_screen.dart';
import 'package:amir_s_application1/presentation/chart_weekly_tab_container_screen/chart_weekly_tab_container_screen.dart';
import 'package:amir_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String sidebarOneScreen = '/sidebar_one_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String tradeTransactionScreen = '/trade_transaction_screen';

  static const String tradeTransactionExpandedScreen =
      '/trade_transaction_expanded_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String exportScreen = '/export_screen';

  static const String exportTwoScreen = '/export_two_screen';

  static const String sidebarScreen = '/sidebar_screen';

  static const String chartWeeklyPage = '/chart_weekly_page';

  static const String chartWeeklyTabContainerScreen =
      '/chart_weekly_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        onboardingOneScreen: OnboardingOneScreen.builder,
        sidebarOneScreen: SidebarOneScreen.builder,
        dashboardScreen: DashboardScreen.builder,
        tradeTransactionScreen: TradeTransactionScreen.builder,
        tradeTransactionExpandedScreen: TradeTransactionExpandedScreen.builder,
        onboardingTwoScreen: OnboardingTwoScreen.builder,
        exportScreen: ExportScreen.builder,
        exportTwoScreen: ExportTwoScreen.builder,
        sidebarScreen: SidebarScreen.builder,
        chartWeeklyTabContainerScreen: ChartWeeklyTabContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: OnboardingOneScreen.builder
      };
}
