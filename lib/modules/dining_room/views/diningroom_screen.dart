import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:mmarket_interfaces/core/constants/colors.dart';
import 'package:mmarket_interfaces/core/firebase_services/firestore_products/product_controller.dart';
import 'package:mmarket_interfaces/modules/dining_room/controllers/diningroom_controller.dart';

import '../../../models/Product_model.dart';
import '../../../widgets_componants/product_list_item.dart';

class DiningroomScreen extends StatelessWidget {
  //diningRoom
  DiningroomScreen({super.key});

  final ProductsController productsController = Get.put(ProductsController());
  final DiningroomController controller = Get.put(DiningroomController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Dining Table',
          style: TextStyle(
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
      body: StreamBuilder(
        stream: controller.firebaseFirestore
            .collection('Products')
            .where('category', isEqualTo: 'diningRoom')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text(
                      'Error !!!!',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Terracotta,
                      ),
                    ),
                    content: Text('${snapshot.error}'),
                  );
                });
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                backgroundColor: salmon,
                color: Terracotta,
              ),
            );
          }
          if (snapshot.data!.docs.isEmpty) {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const AlertDialog(
                    title: Text(
                      'No Data Founded !!!!',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Terracotta,
                      ),
                    ),
                  );
                });
          }
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
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
                      'Bed',
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
              Expanded(
                child: GridView.builder(
                  itemCount: snapshot.data!.docs.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0.0,
                    crossAxisSpacing: 0.0,
                    childAspectRatio: 5 / 8,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    List<ProductModel> products = snapshot.data!.docs
                        .map((doc) => ProductModel.fromMap(doc.data()))
                        .toList();

                    //   Map product = snapshot.data!.docs.first.data();
                    return productLIstItem(context,
                        productModel: products[index]);
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
