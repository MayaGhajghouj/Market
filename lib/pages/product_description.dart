import 'package:flutter/material.dart';
import 'package:mmarket_interfaces/widgets/product_description_item.dart';

import '../constants/colors.dart';

class ProductDescription  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ProductDescriptionItem(
        AppbarText: 'Dining Table',
        RowTextButton1: 'Living room',
        RowTextButton2: ' Decorative Light',
        RowTextButton3: 'Bed',
      ImagePath: 'assets/images/openproduct.png',
      ProductTitle: 'Glass Table',
      price: '300',


    );
  }
}
