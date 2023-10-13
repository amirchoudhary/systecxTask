import '../models/costsheet1_item_model.dart';
import 'package:amir_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Costsheet1ItemWidget extends StatelessWidget {
  Costsheet1ItemWidget(
    this.costsheet1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Costsheet1ItemModel costsheet1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36.v,
      width: 174.h,
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
                        costsheet1ItemModelObj.username!,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        costsheet1ItemModelObj.customerId!,
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
            child: Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text(
                "lbl_on_02_08_2023".tr,
                style: CustomTextStyles.bodySmallBlack900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
