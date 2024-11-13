import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/widgets_componants/product_description_item.dart';
import '../../models/Product_model.dart';

class ShowProductDescription extends StatefulWidget {
  const ShowProductDescription({
    super.key,
  });

  @override
  State<ShowProductDescription> createState() => _ShowProductDescriptionState();
}

class _ShowProductDescriptionState extends State<ShowProductDescription> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ProductModel productModel = Get.arguments;
    return ProductDescriptionItem(productModel: productModel);
  }
}
