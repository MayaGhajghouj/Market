import 'package:get/get.dart';
import 'package:mmarket_interfaces/modules/dining_room/views/diningroom_home_page.dart';
import 'package:mmarket_interfaces/modules/dining_room/views/product_description_DiningTable.dart';
import 'package:mmarket_interfaces/modules/dining_room/views/sections_diningroom.dart';
import 'package:mmarket_interfaces/modules/living_room/views/product_description_sofa.dart';
import 'package:mmarket_interfaces/modules/living_room/views/sections_livingroom.dart';
import 'package:mmarket_interfaces/modules/living_room/views/livingroom_home_page.dart';
import 'package:mmarket_interfaces/modules/login_signin_page/views/login.dart';
import 'package:mmarket_interfaces/modules/login_signin_page/views/signup.dart';
import 'package:mmarket_interfaces/modules/profile_pages/views/my_orders.dart';
import 'package:mmarket_interfaces/modules/profile_pages/views/edit_profile.dart';
import 'package:mmarket_interfaces/modules/profile_pages/views/profile.dart';
import 'package:mmarket_interfaces/modules/reviewpage/views/review_page.dart';
import 'package:mmarket_interfaces/modules/welcomebackpage/views/welcome_back_page.dart';

class Routes {
  static const ProductDes_DiningTable = '/ProductDes_DiningTable';
  static const DiningRoomHomePage = '/DiningRoomHomePage';
  static const SectionsLivingroom = '/SectionsLivingroom';
  static const SectionsDiningroom ='/SectionsDiningroom';
  static const ProductDes_Sofa = '/ProductDes_Sofa';
  static const livingroom_HomePage = '/livingroom_HomePage';
  static const EditProfile = '/EditProfile';
  static const Profile = '/Profile';
  static const MyOrders = '/MyOrders';
  static const ReviewPage = '/ReviewPage';
  static const WelcomeBackPage = '/WelcomeBackPage';
  static const Login='/Login';
  static const Signup='/Signup';

}

class AppPages {
  static final Pages = [
    GetPage(
      name: Routes.ProductDes_DiningTable,
      page: () => ProductDes_DiningTable(),
    ),
    GetPage(
      name: Routes.DiningRoomHomePage,
      page: () => DiningRoomHomePage(),
    ),
    GetPage(
      name: Routes.SectionsLivingroom,
      page: () => SectionsLivingroom(),
    ),
    GetPage(
      name: Routes.ProductDes_Sofa,
      page: () => ProductDes_Sofa(),
    ),
    GetPage(
      name: Routes.livingroom_HomePage,
      page: () => livingroom_HomePage(),
    ),
    GetPage(
      name: Routes.EditProfile,
      page: () => EditProfile(),
    ),
    GetPage(
      name: Routes.Profile,
      page: () => Profile(),
    ),
    GetPage(
      name: Routes.MyOrders,
      page: () => MyOrders(),
    ),
    GetPage(
      name: Routes.ReviewPage,
      page: () => ReviewPage(),
    ),
    GetPage(
      name: Routes.WelcomeBackPage,
      page: () => WelcomeBackPage(),
    ),
    GetPage(
      name: Routes.SectionsDiningroom,
      page: () => SectionsDiningroom(),
    ),
    GetPage(
      name: Routes.Login,
      page: () => Login(),
    ),
    GetPage(
      name: Routes.Signup,
      page: () => Signup(),
    ),
  ];
}
