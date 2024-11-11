import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/constants/colors.dart';
import 'package:mmarket_interfaces/core/app_snackbar.dart';
import 'package:mmarket_interfaces/core/firebase_services/firestore_products/firestore_products.dart';
import 'package:mmarket_interfaces/core/manage_app_state/app_status.dart';
import 'package:mmarket_interfaces/widgets_componants/product_list_item.dart';

class DiningRoomHomePage extends StatefulWidget {
class DiningRoomHomePage extends StatefulWidget {
  const DiningRoomHomePage({super.key});

  @override
  State<DiningRoomHomePage> createState() => _DiningRoomHomePageState();
}

class _DiningRoomHomePageState extends State<DiningRoomHomePage> {
  @override
  void initState() {
    super.initState();
    FirestoreProducts firestoreProducts = Get.put(FirestoreProducts());
    firestoreProducts.getProductsByCategories(category: 'diningRoom');
  }
    firestoreProducts.getProductsByCategories(category: 'diningRoom');
  }

  @override
  Widget build(BuildContext context) {
    FirestoreProducts firestoreProducts = Get.find();
  @override
  Widget build(BuildContext context) {
    FirestoreProducts firestoreProducts = Get.find();
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
                decoration: BoxDecoration(
                  color: salmon,
                  borderRadius: const BorderRadius.all(
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
          // ignore: unrelated_type_equality_checks
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
        child: Obx(() {
          var products = firestoreProducts.myProducts;
          // ignore: unrelated_type_equality_checks
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
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                // this row is in the above of screen
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
                    childAspectRatio: 5/8,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    final product = firestoreProducts.myProducts[index];
                    if (products.isNotEmpty) {
                      print('Success in fetch data');
                      return ProductLIstItem(productModel: product);
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
