import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:real_estate_app/features/cart/data/model/real_estate_model.dart';
import '../../../../resources/color_manager.dart';
import '../../../../resources/styles_manager.dart';
import '../widgets/tab_items.dart';

class RealEstateDetailsScreen extends StatelessWidget {
  const RealEstateDetailsScreen({super.key, required this.realEstate});

  final RealEstate realEstate;

  @override
  Widget build(BuildContext context) {
    // RealEstateController controller = Get.put(RealEstateController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'تفاصيل الوحده',
          style: getBoldStyle(color: ColorManager.black).copyWith(fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Stack(
              // alignment: Alignment.bottomCenter,
              // fit: StackFit.expand,
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: double.infinity,
                  child:
                      // Container(width: double.infinity,color: Colors.red,height: 150,),
                      CarouselSlider(
                    items: realEstate?.image?.map((image) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Stack(
                          children: [
                            Image.network(
                              image.url ?? '',
                              fit: BoxFit.contain,
                            ),
                            const Positioned(
                                top: 2,
                                left: 15,
                                child: Icon(
                                  Icons.bookmark,
                                  size: 42,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      autoPlay: false,
                      aspectRatio: 16 / 9,
                      enlargeCenterPage: false,
                      viewportFraction: 1.0,
                      padEnds: true,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // MainHome(realEstate: realEstate),
            Expanded(
              child: MyCustomTab(
                realEstate: realEstate,
              ),
            )
          ],
        ),
      ),
    );
  }
}
