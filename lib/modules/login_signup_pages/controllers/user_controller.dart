import 'package:mmarket_interfaces/models/user_model.dart';

class UserController {
  static UserModel? _user;
  // Setter to initialize the user model after login and signup
  static void setUser(UserModel user) {
    _user = user;
  }

  // Getter to fetch the current user model in all the app
  static UserModel? getUser() {
    return _user;
  }
}
