import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  String? image;
  ImageWidget({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    if (image != null || image!.isEmpty) {
      return Image.network(image ?? "");
    } else {
      return Image.asset("assets/images/now_default.jpg");
    }
    // return  Placeholder();
  }
}
