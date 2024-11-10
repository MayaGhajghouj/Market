import 'package:flutter/foundation.dart';

class ProductModel {
  String productID;
  String category; // diningRoom // livingRoom
  String productPath;
  String productName;
  String productDescription;
  double productPrice;

  ProductModel({
    required this.productID,
    required this.category,
    required this.productName,
    required this.productDescription,
    required this.productPath,
    required this.productPrice,
  });

  Map<String, dynamic> toMap() {
    return {
      'productID': productID,
      'category': Category,
      'productName': productName,
      'productDescription': productDescription,
      'productPath': productPath,
      'productPrice': productPrice,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> myMap) {
    return ProductModel(
      productID: myMap['productID']?? 'null',
      category: myMap['category']?? 'null',
      productName: myMap['productName']?? 'null',
      productDescription: myMap['productDescription']??'null',
      productPath: myMap['productPath']??'null',
      productPrice: double.parse(myMap['productPrice']??'0.0'),
      );
  }

// fromFirestore: (snapshot, options) => {
//         const data = snapshot.data(options);
//         return new City(data.name, data.state, data.country);
//     }

}
