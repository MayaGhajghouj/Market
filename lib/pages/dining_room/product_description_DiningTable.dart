import 'package:flutter/material.dart';

import '../../widgets_componants/product_description_item.dart';

class ProductDes_DiningTable  extends StatelessWidget {


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
