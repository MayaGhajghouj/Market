import 'package:flutter/material.dart';
import 'package:mmarket_interfaces/views/widgets_componants/product_description_item.dart';


class ProductDes_Sofa  extends StatelessWidget {
   ProductDes_Sofa({super.key});

  @override
  Widget build(BuildContext context) {
    return ProductDescriptionItem(
      AppbarText: 'Sofa',
      RowTextButton1: 'Living room',
      RowTextButton2: ' Decorative Light',
      RowTextButton3: 'Bed',
      ImagePath: 'assets/images/sofa.png',
      ProductTitle: 'Velvet Sofa',
      price: '520',


    );
  }
}
