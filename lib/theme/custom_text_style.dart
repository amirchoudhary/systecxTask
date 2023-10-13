import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray500_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumInterGray500 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 11.fSize,
      );
  static get bodySmallGray90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
        fontSize: 8.fSize,
      );
  static get bodySmallInterGray500 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray500,
        fontSize: 11.fSize,
      );
  // Headline text style
  static get headlineMedium28 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 28.fSize,
      );
  static get headlineMedium28_1 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 28.fSize,
      );
  static get headlineMediumBluegray90001 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumGray900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumSemiBold => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 28.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumSemiBold28 =>
      theme.textTheme.headlineMedium!.copyWith(
        fontSize: 28.fSize,
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeGray60001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60001,
        fontSize: 12.fSize,
      );
  static get labelLargeGray60003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60003,
        fontSize: 12.fSize,
      );
  static get labelLargeGray60004 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60004,
        fontSize: 12.fSize,
      );
  static get labelLargeGray800 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray800,
      );
  static get labelLargeGray80001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray80001,
      );
  static get labelLargeGray8000112 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray80001,
        fontSize: 12.fSize,
      );
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray90002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 12.fSize,
      );
  static get labelLargeGray9000212 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 12.fSize,
      );
  static get labelLargeGray90012 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900.withOpacity(0.53),
        fontSize: 12.fSize,
      );
  static get labelLargeGreen500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green500,
        fontSize: 12.fSize,
      );
  static get labelLargeGreen700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green700,
        fontSize: 12.fSize,
      );
  static get labelLargeOnErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 12.fSize,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnPrimaryContainer_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargeRed400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red400,
        fontSize: 12.fSize,
      );
  static get labelLargeRed50001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red50001,
        fontSize: 12.fSize,
      );
  static get labelMediumBluegray900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumErrorContainer => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get labelMediumErrorContainer_1 =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get labelMediumGray400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray400,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumGray400Medium => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumGray50001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50001,
        fontSize: 11.fSize,
      );
  static get labelMediumGray50001_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get labelMediumGray60002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray60002,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumGray60003 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray60003,
        fontSize: 11.fSize,
      );
  static get labelMediumGray60004 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray60004,
        fontSize: 11.fSize,
      );
  static get labelMediumGray80001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGray900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 11.fSize,
      );
  static get labelMediumGray90002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get labelMediumGray90011 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 11.fSize,
      );
  static get labelMediumGray90011_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray900.withOpacity(0.53),
        fontSize: 11.fSize,
      );
  static get labelMediumGray900Medium => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumGreen700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.green700,
      );
  static get labelMediumGreen700_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.green700,
      );
  static get labelMediumGreen700_2 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.green700,
      );
  static get labelMediumMedium => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelMediumMedium11 => theme.textTheme.labelMedium!.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumMedium_1 => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOnPrimaryContainer11 =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 11.fSize,
      );
  static get labelMediumOnPrimaryContainer11_1 =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 11.fSize,
      );
  static get labelMediumOnPrimaryContainerBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOnPrimaryContainer_1 =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelMediumOrange300 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.orange300,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumRed400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.red400,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumRed50001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.red50001,
      );
  static get labelMediumRed50001_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.red50001,
      );
  static get labelMediumRed600 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.red600,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumRed700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.red700,
        fontSize: 11.fSize,
      );
  static get labelMediumTeal400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.teal400,
        fontSize: 11.fSize,
      );
  static get labelMediumTeal40001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.teal40001,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumTeal40011 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.teal400,
        fontSize: 11.fSize,
      );
  static get labelSmallBlack900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900,
      );
  static get labelSmallBlack900Medium => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallBluegray90001 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallBluegray90001Medium =>
      theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallGreen700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.green700,
      );
  static get labelSmallGreen700_1 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.green700,
      );
  static get labelSmallRed50001 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.red50001,
      );
  static get labelSmallRed50001_1 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.red50001,
      );
  // Montserrat text style
  static get montserratGray90002 => TextStyle(
        color: appTheme.gray90002,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).montserrat;
  // Title text style
  static get titleLargeGray60003 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray60003,
      );
  static get titleLargeInterOnErrorContainer =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 22.fSize,
      );
  static get titleMediumBluegray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray60003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60003,
        fontSize: 18.fSize,
      );
  static get titleMediumGray60003_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60003,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleMediumGray90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallBluegray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallDeeporangeA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepOrangeA700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray80003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80003,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryContainerSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRed400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red400,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRed400SemiBold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red400,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRed700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
