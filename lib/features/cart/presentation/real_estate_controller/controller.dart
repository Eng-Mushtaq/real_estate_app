import 'dart:convert';

import 'package:dartz/dartz_unsafe.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

import '../../../../api/api_provider.dart';
import '../../../../core/error/failures.dart';
import '../../data/model/real_estate_model.dart';

class RealEstateController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    getRealEstate();
  }

  RealEstateModel? realEstate;

  void getRealEstate() async {
    final response = await http.get(Uri.parse(ApiProvider.baseUrl));
    // print("response.body cart remote data source ");
    print(response.body);
    if (response.statusCode == 200) {
      final decodedJson = json.decode(response.body);
      realEstate = RealEstateModel.fromJson(decodedJson);
      update();
    }
  }
}
