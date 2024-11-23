
import 'package:flutter/material.dart';
import 'package:mmarket_interfaces/core/manage_app_state/app_routers.dart';

import '../../../widgets_componants/sections_page.dart';

class SectionsDiningroom extends StatelessWidget {
  const SectionsDiningroom({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionsPage(
        appbarTitle: 'Dining Room',
        section1: 'Chairs',
        section2: 'Storage',
        section3: 'Dining Tables',
        routing_section3:Routes.diningRoomHomePage,
        section4: 'Tables',
        section5: 'Decorative Light',
        section6: 'Decor',);
  }
}
