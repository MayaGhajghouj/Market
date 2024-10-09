import 'package:flutter/material.dart';
import 'package:mmarket_interfaces/constants/colors.dart';

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
        section5: 'Tables',
        section6: 'Cupboard',);
  }
}
