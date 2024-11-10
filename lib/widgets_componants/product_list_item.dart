import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/constants/colors.dart';
import 'package:mmarket_interfaces/core/helper/image_url.dart';
import '../models/Product_model.dart';

Widget ProductLIstItem(
    {String? ProductDetailsPage, required ProductModel productModel

// onpress for favourit
// onpress for add item to card
    }) {
  return Expanded(
    child: GestureDetector(
      onTap: () {
        Get.toNamed(ProductDetailsPage!);
      },
      child: Container(
        // the big frame contain the product like image, and title, price
        padding: const EdgeInsets.all(8.0),
        //    width: 163,
        //  height: 219,
        decoration: const BoxDecoration(
          //color: brown_rosy,
          borderRadius: BorderRadius.all(
            Radius.circular(14.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // container for picture
              width: 163,
              decoration: BoxDecoration(
                color: Beige,
                borderRadius: BorderRadius.all(
                  Radius.circular(14.0),
                ),
              ),
              child: Image.network(
                convertToDirectLink(productModel.productPath),
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(
                      child: CircularProgressIndicator(
                    color: salmon,
                    backgroundColor: Terracotta,
                  ));
                },
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error);
                },
                fit: BoxFit.cover, // Adjust image fit
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Text(
              productModel.productName,
              style: const TextStyle(
                //  font-family: Poppins;
                // font-size: 15px;
                // font-weight: 500;
                // line-height: 22.5px;
                // text-align: left;
                // color: #4B4544;
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Black,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Text(
              productModel.productDescription,
              style: const TextStyle(
                fontFamily: 'League Spartan',
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: Black,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 9,
            ),
            const Divider(
              color: salmon,
              thickness: 1.5,
            ),
            Container(
              width: 163,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      productModel.productPrice.toString(),
                      style: const TextStyle(
                        //styleName: Subtitle;
                        //   font-family: Poppins;
                        // font-size: 15px;
                        // font-weight: 500;
                        // line-height: 22.5px;
                        // text-align: right;
                        // color: #CC7861;
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Terracotta,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Terracotta,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.favorite,
                                size: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Terracotta,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.add,
                                size: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
