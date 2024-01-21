import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class EmptyWidget extends StatelessWidget {
  const EmptyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  Lottie.asset("assets/empty2.json",width: 200,height: 200,repeat: false);
  }
}
