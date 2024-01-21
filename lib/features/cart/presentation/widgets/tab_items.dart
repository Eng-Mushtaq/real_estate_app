import 'package:flutter/material.dart';
import 'package:real_estate_app/features/cart/data/model/real_estate_model.dart';
import 'basic_info.dart';
import 'booking_conditions.dart';
import 'featueres.dart';
import 'location.dart';
import 'tab_bar_widget.dart';

class MyCustomTab extends StatefulWidget {
  RealEstate realEstate;

  MyCustomTab({super.key, required this.realEstate});

  @override
  State<MyCustomTab> createState() => _MyCustomTabState();
}

class _MyCustomTabState extends State<MyCustomTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            BasicInfoWidget(realEstate: widget.realEstate),
            const SizedBox(
              height: 20,
            ),
            Container(
                // height: ,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: Color(0xffF5F5F5),
                ),
                child: const TabBarWidget()),
            Expanded(
              child: TabBarView(children: [
                widget.realEstate.featuers != null
                    ? FeateruesWidget(
                        featuers: widget.realEstate.featuers,
                      )
                    : Container(
                        child: const Center(
                          child: Text('لا يوجد بيانات'),
                        ),
                      ),
                LocationWidget(
                  realEstate: widget.realEstate,
                ),
                widget.realEstate.conditions != null
                    ? BookingConditionsWidget(
                        realEstate: widget.realEstate,
                      )
                    : const Center(
                        child: Text('لا يوجد بيانات'),
                      ),

                // MyTagTab(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
