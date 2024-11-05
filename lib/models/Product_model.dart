import 'package:flutter/foundation.dart';

class ProductModel {
  String productID;
  String productPath;
  String productName;
  String productDescription;
  double productPrice;

  ProductModel({
    required this.productID,
    required this.productName,
    required this.productDescription,
    required this.productPath,
    required this.productPrice,
  });

  Map<String, dynamic> toMap() {
    return {
      'productID': productID,
      'productName': productName,
      'productDescription': productDescription,
      'productPath': productPath,
      'productPrice': productPrice,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> myMap) {
    return ProductModel(
      productID: myMap['productID'],
      productName: myMap['productName'],
      productDescription: myMap['productDescription'],
      productPath: myMap['productPath'],
      productPrice: myMap['productPrice'],
    );

    
  }
}
