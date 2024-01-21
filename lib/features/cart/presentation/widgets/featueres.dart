import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/styles_manager.dart';
import '../../data/model/real_estate_model.dart';

class FeateruesWidget extends StatelessWidget {
  const FeateruesWidget({super.key, required this.featuers});

  final Featuers? featuers;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text('المميزات', style: getBoldStyle(color: ColorManager.black)),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.bed,
                    size: 32,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(featuers!.roomsCount.toString(),
                      style: getBoldStyle(color: ColorManager.black)),
                  Text(' غرف', style: getBoldStyle(color: ColorManager.black)),
                  const SizedBox(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.bathtub_outlined),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(featuers!.roomsCount.toString(),
                      style: getBoldStyle(color: ColorManager.black)),
                  Text(' صالون ',
                      style: getBoldStyle(color: ColorManager.black)),
                  const SizedBox(),
                ],
              ),
              const SizedBox(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.bed),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(featuers!.pathroomCount.toString(),
                      style: getBoldStyle(color: ColorManager.black)),
                  Text(' حمامات',
                      style: getBoldStyle(color: ColorManager.black)),
                  const SizedBox(),
                ],
              ),
              featuers?.hasParking == true
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.shower_outlined),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(featuers!.roomsCount.toString(),
                            style: getBoldStyle(color: ColorManager.black)),
                        Text('موقف سيارات ',
                            style: getBoldStyle(color: ColorManager.black)),
                        const SizedBox(),
                      ],
                    )
                  : Container(),
              const SizedBox(),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text('تصميم الشقة: ', style: getBoldStyle(color: ColorManager.black)),
          Text(
            featuers?.realEstateDescription ?? '',
          ),
          Text('تجهيزات فاخرة: ',
              style: getBoldStyle(color: ColorManager.black)),
          Text(featuers?.realEstateEquipment ?? ''),
        ],
      ),
    );
  }
}
