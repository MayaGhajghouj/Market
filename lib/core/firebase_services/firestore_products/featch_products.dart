import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/manage_app_state/app_state_controller.dart';
import 'package:mmarket_interfaces/models/Product_model.dart';

class FirestoreProducts extends GetxController {
  final db = FirebaseFirestore.instance;
  final AppStateController appStateController = Get.find();
  // Observable list of products (when i use a realtime properties )
  final RxList<ProductModel> myProducts = <ProductModel>[].obs;

  /// Get products by the name of category  // livingRoom // diningRoom
  void getProductsByCategories({required String category}) {
    appStateController.startLoading();
    db
        .collection("Products")
        .where("category", isEqualTo: category)
        .snapshots() // Stream updates
        .listen((querySnapshot) {
      try {
        myProducts.clear();
        // Map the snapshot to ProductModel
        for (var doc in querySnapshot.docs) {
          myProducts.add(ProductModel.fromMap(doc.data()));
        }
        appStateController.setSuccess();
      } catch (e) {
        print('\n catch error : $e \n ');
      }
    }, onError: (e) {
      appStateController
          .setError('Error in fetching products\n$e \n======================');
    });
  }
}
