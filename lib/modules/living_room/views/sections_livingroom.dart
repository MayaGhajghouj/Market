import 'package:flutter/material.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';

import '../../../widgets_componants/sections_page.dart';

class SectionsLivingroom extends StatelessWidget {
  const SectionsLivingroom({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionsPage(
        appbarTitle: 'living room',
        section1: 'Decorative        Light',
        section2: 'Lights',
        section3: 'Chairs',
        section4: 'Sofa',
        routing_section4: Routes.livingroom_HomePage,
        section5: 'Tables',
        section6: 'Cupboard',);
  }
}
