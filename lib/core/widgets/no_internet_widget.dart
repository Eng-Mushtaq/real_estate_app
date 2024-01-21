import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class NoInternetWidget extends StatelessWidget {
  const NoInternetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(child:
      Lottie.asset("assets/no_internet_2.json"),
    );
  }
}
