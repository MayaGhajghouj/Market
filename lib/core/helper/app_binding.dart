import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/firebase_services/firestore_products/manage_prodducts.dart';


class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ProductsController>(ProductsController());
   // Get.put<AppStateController>(AppStateController());
  }
}
