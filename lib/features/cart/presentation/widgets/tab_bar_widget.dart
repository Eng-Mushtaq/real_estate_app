import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      padding: EdgeInsets.zero,
      indicatorPadding: EdgeInsets.zero,
      labelPadding: EdgeInsets.zero,
      splashBorderRadius: BorderRadius.circular(20),
      indicator: const BoxDecoration(
        color: Color(0xff004D5A),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),

      labelColor: Colors.white,
      // dividerColor: Colors.black,

      // ignore: prefer_const_literals_to_create_immutables
      tabs: [
        const Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.stars_rounded),
              Text('المميزات'),
            ],
          ),
        ),
        const Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.location_on),
              Text('الموقع'),
            ],
          ),
        ),
        const Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.checklist),
              Text('شروط الحجز'),
            ],
          ),
        ),
      ],
    );
  }
}
