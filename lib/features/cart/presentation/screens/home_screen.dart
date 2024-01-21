import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/features/cart/presentation/real_estate_controller/controller.dart';
import '../../../../resources/color_manager.dart';
import 'detials_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RealEstateController controller = Get.put(RealEstateController());

    return Scaffold(
        backgroundColor: ColorManager.primary2,
        appBar: _buildAppBar(),
        body: RefreshIndicator(
          onRefresh: () async {
            controller.getRealEstate();
          },
          child: ListView(children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                GetBuilder<RealEstateController>(
                  builder: (context) {
                    print('////////////////////////////////////');
                    print(controller.realEstate?.data.first.unitType);
                    if (controller.realEstate?.data != null) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 500,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: controller.realEstate?.data.length,
                            itemBuilder: (context, index) => Card(
                              elevation: 0.2,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(RealEstateDetailsScreen(
                                    realEstate:
                                        controller.realEstate!.data[index],
                                  ));
                                },
                                child: Container(
                                    height: 100,
                                    // alignment: Alignment.centerRight,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Stack(
                                      children: [
                                        Container(
                                          // width: double.infinity,
                                          child: Row(
                                            children: [
                                              Text(
                                                controller
                                                        .realEstate
                                                        ?.data[index]
                                                        .unitType ??
                                                    'Unit Type',
                                                style: const TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                textAlign: TextAlign.center,
                                                softWrap: true,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(controller.realEstate
                                                    ?.data[index].annualRent ??
                                                'Unit Type'),
                                            const Spacer(),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              height: 85,
                                              width: 100,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: CachedNetworkImage(
                                                    imageUrl: controller
                                                            .realEstate
                                                            ?.data[index]
                                                            .image
                                                            .first
                                                            ?.url ??
                                                        "",
                                                    placeholder:
                                                        (context, url) =>
                                                            Image.asset(
                                                              'assets/images/now_default.jpg',
                                                              fit: BoxFit.cover,
                                                            ),
                                                    errorWidget: (context, url,
                                                            error) =>
                                                        Image.asset(
                                                            'assets/images/now_default.jpg',
                                                            fit: BoxFit.cover),
                                                    fit: BoxFit.cover,
                                                    width: double.infinity),
                                              ),
                                            ),

                                            // ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("assets/images/now_default.jpg",height: 70,width:70,fit: BoxFit.cover,)),
                                          ],
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                          ),
                        ),
                      );
                    } else {
                      {
                        const Center(child: CircularProgressIndicator());
                      }
                    }
                    return Container();
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                // OrderTypesList2(),
              ],
            ),
          ]),
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      toolbarHeight: 70,
      elevation: 0.0,
      actions: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 10),
                    child: Text(
                      "مرحبا بك",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 15, bottom: 10),
          child: Container(
            width: 40,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              // border: Border.all(),
              // color: Colors.white,
            ),

            // child: Center(child: NotificationIconBadge()),
            child: const Center(
              child: Icon(Icons.notification_add),
            ),
          ),
        ),
      ],
    );
  }
}
