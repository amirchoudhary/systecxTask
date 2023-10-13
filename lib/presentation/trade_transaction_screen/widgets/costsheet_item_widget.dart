import '../models/costsheet_item_model.dart';
import 'package:amir_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CostsheetItemWidget extends StatelessWidget {
  CostsheetItemWidget(
    this.costsheetItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CostsheetItemModel costsheetItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: SizedBox(
        height: 37.v,
        width: 175.h,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPp,
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    radius: BorderRadius.circular(
                      18.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          costsheetItemModelObj.username!,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelLarge,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          costsheetItemModelObj.customerId!,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallGray500,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "lbl_on_02_08_2023".tr,
                style: CustomTextStyles.bodySmallBlack900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
