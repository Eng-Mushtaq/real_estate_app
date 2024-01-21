import 'package:flutter/material.dart';
import 'package:real_estate_app/features/cart/data/model/real_estate_model.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/styles_manager.dart';

class BasicInfoWidget extends StatelessWidget {
  BasicInfoWidget({super.key, this.realEstate});
  RealEstate? realEstate;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'نوع الوحدة : ',
                  style: getBoldStyle(color: ColorManager.black),
                ),
                Text(realEstate?.unitType ?? '',
                    style: getBoldStyle(color: ColorManager.black))
              ],
            ),
            Text('الإيجار السنوي ',
                style: getBoldStyle(color: ColorManager.black))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text('رقم الوحدة : ',
                    style: getBoldStyle(color: ColorManager.grey)),
                Text(realEstate?.id.toString() ?? '',
                    style: getBoldStyle(color: ColorManager.grey))
              ],
            ),
            Row(
              children: [
                Text(realEstate?.annualRent!.toString() ?? '' + ' ',
                    style: getBoldStyle(color: ColorManager.darkPrimary)),
                Text(realEstate!.currencyCode.toString()),
              ],
            )
          ],
        ),
      ],
    );
  }
}
