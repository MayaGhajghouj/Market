import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/constants/colors.dart';
import 'package:mmarket_interfaces/core/app_snackbar.dart';
import 'package:mmarket_interfaces/core/firebase_services/manageProducts/firestore_products.dart';
import 'package:mmarket_interfaces/core/manage_app_state/app_status.dart';
import 'package:mmarket_interfaces/widgets_componants/product_list_item.dart';

class livingroom_HomePage extends StatefulWidget {
  const livingroom_HomePage({super.key});

  @override
  State<livingroom_HomePage> createState() => _livingroom_HomePageState();
}

class _livingroom_HomePageState extends State<livingroom_HomePage> {
  @override
  void initState() {
    super.initState();
    //   FirestoreProducts firestoreProducts = Get.put(FirestoreProducts());
    //   firestoreProducts.getProductsByCategories(category: 'livingRoom');
    //
  }

  @override
  Widget build(BuildContext context) {
    final firestoreProducts = Get.put(FirestoreProducts());
    firestoreProducts.getProductsByCategories(category: 'livingRoom');
    //FirestoreProducts firestoreProducts = Get.find();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Sofa',
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Obx(() {
          var products = firestoreProducts.myProducts;
          if (firestoreProducts.appStateController.state == AppState.loading) {
            return const Center(
                child: CircularProgressIndicator(
              color: salmon,
              backgroundColor: Terracotta,
            ));
          }
          if (firestoreProducts.appStateController.state == AppState.error) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              AppSnackBar(
                  context: context,
                  msg:
                      firestoreProducts.appStateController.errorMsg.toString());
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
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0.0,
                    crossAxisSpacing: 0.0,
                    childAspectRatio: 5 / 8,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    if (products.isNotEmpty) {
                      print('Success in fetch data');

                      return productLIstItem(context,
                          productModel: products[index]);
                    } else {
                      AppSnackBar(
                          context: context, msg: 'No products available');
                      print('faild in fetch data');
                      return null;
                    }
                  },
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
