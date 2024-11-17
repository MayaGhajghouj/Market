import 'package:flutter/material.dart';
import 'package:mmarket_interfaces/core/constants/colors.dart';
import 'package:mmarket_interfaces/core/helper/image_url.dart';
import '../models/Product_model.dart';

Widget ProductDescriptionItem({
  required ProductModel productModel,
}) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text(
        productModel.subCategory,
        style: const TextStyle(
          fontFamily: 'Poppins',
          color: salmon,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: const BoxDecoration(
                color: salmon,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: const Icon(
                Icons.search,
                size: 35,
              )),
        ),
      ],
      backgroundColor: Beige,
    ),
    body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Bed',
                  style: TextStyle(
                    color: salmon,
                    fontFamily: 'League Spartan',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                width: 9,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  ' Decorative Light',
                  style: TextStyle(
                    color: salmon,
                    fontFamily: 'League Spartan',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                width: 9,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Living room',
                  style: TextStyle(
                    color: salmon,
                    fontFamily: 'League Spartan',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 264,
                  width: 315,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14.0)),
                    color: Beige,
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
                      return const Icon(Icons.error);
                    },
                    // fit: BoxFit.cover, // Adjust image fit
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productModel.productName,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Black,
                      ),
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
                    ),
                    const Divider(
                      color: salmon,
                      thickness: 2,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              '${productModel.productPrice}\$',
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
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
                                  // fav icon
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
                                  // like icon
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
                    MaterialButton(
                      onPressed: () {},
                      color: salmon,
                      child: const Center(
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                              color: Terracotta,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
