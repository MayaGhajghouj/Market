import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/constants/colors.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/core/app_snackbar.dart';
import 'package:mmarket_interfaces/core/firebase_services/firestore_products/firestore_products.dart';
import 'package:mmarket_interfaces/core/manage_app_state/app_status.dart';
import 'package:mmarket_interfaces/widgets_componants/product_list_item.dart';

class DiningRoomHomePage extends StatelessWidget {
  const DiningRoomHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    FirestoreProducts firestoreProducts = Get.put(FirestoreProducts());

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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Obx(() {
            var myProducts = firestoreProducts.getProductsByCategories(
                category: 'diningRoom');
            // ignore: unrelated_type_equality_checks
            if (firestoreProducts.appStateController.state ==
                AppState.loading) {
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
                    msg: firestoreProducts.appStateController.errorMsg
                        .toString());
              });
            }

            return Column(
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

                // this rows will comming for products
                Row(
                  children: [
                    ProductLIstItem(
                      ProductDetailsPage: Routes.ProductDes_DiningTable,
                      PicPath: 'assets/images/Topleft.png',
                      Title: 'Deluxe table',
                      Description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                      Price: 420,
                    ),
                    ProductLIstItem(
                      PicPath: 'assets/images/Topright.png',
                      Title: 'Modern table',
                      Description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                      Price: 320,
                    ),
                  ],
                ),
                Row(
                  children: [
                    ProductLIstItem(
                      PicPath: 'assets/images/Downleft.png',
                      Title: 'Modern Glass table',
                      Description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                      Price: 220,
                    ),
                    ProductLIstItem(
                      PicPath: 'assets/images/Downright.png',
                      Title: 'Bohemian table',
                      Description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                      Price: 410,
                    ),
                  ],
                ),
                Row(
                  children: [
                    ProductLIstItem(
                      PicPath: 'assets/images/Topleft.png',
                      Title: 'Deluxe table',
                      Description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                      Price: 420,
                    ),
                    ProductLIstItem(
                      PicPath: 'assets/images/Topright.png',
                      Title: 'Modern table',
                      Description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                      Price: 320,
                    ),
                  ],
                ),
                Row(
                  children: [
                    ProductLIstItem(
                      PicPath: 'assets/images/Downleft.png',
                      Title: 'Modern Glass table',
                      Description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                      Price: 220,
                    ),
                    ProductLIstItem(
                      PicPath: 'assets/images/Downright.png',
                      Title: 'Bohemian table',
                      Description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                      Price: 410,
                    ),
                  ],
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
