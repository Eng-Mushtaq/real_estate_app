import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../resources/color_manager.dart';
class ProgressWidget extends StatelessWidget {
  const ProgressWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  Center(child: CircularProgressIndicator(color: ColorManager.primary,),);
  }
}
