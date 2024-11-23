import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/manage_app_state/app_state_controller.dart';
import 'package:mmarket_interfaces/modules/login_signup_pages/controllers/user_controller.dart';

class ProductsController extends GetxController {
  final db = FirebaseFirestore.instance;
  final AppStateController appStateController = Get.find();
  final user = UserController.getUser();
  // Observable list of liked products
  RxList<String> userLikedProducts = <String>[].obs;

  ProductsController() {
    userLikedProducts.value = user!.likedProducts;
  }

  /// this function to manage the favourit products process
  Future<void> updateLikedProductsInFirestore() async {
    try {
      //   appStateController.startLoading();
      if (user != null) {
        final userDoc = await FirebaseFirestore.instance
            .collection('usersData')
            .doc(user!.id);
        await userDoc.update({'likedProducts': userLikedProducts});

        // appStateController.setSuccess();
      }
    } catch (e) {
      appStateController.setError('error in press like button');
      print('================ eroror  like  button  $e   \n');
    }
  }
}
