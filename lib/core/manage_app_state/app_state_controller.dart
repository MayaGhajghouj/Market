// Controller to manage the state
import 'package:get/get.dart';

import 'app_status.dart';

class AppStateController extends GetxController {

  var state = AppState.idle.obs;

  void startLoading() {
    state.value = AppState.loading;
  }

  void setSuccess() {
    state.value = AppState.success;
  }

  void setError() {
    state.value = AppState.error;
  }

}
