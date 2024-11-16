import 'package:get/get.dart';
import 'package:mmarket_interfaces/modules/ShowProductDescription/show_product_description.dart';
import 'package:mmarket_interfaces/modules/dining_room/views/diningroom_home_page.dart';
import 'package:mmarket_interfaces/modules/dining_room/views/sections_diningroom.dart';
import 'package:mmarket_interfaces/modules/living_room/views/sections_livingroom.dart';
import 'package:mmarket_interfaces/modules/living_room/views/livingroom_home_page.dart';
import 'package:mmarket_interfaces/modules/login_signin_page/views/login.dart';
import 'package:mmarket_interfaces/modules/login_signin_page/views/signup.dart';
import 'package:mmarket_interfaces/modules/profile_pages/views/my_orders.dart';
import 'package:mmarket_interfaces/modules/profile_pages/views/edit_profile.dart';
import 'package:mmarket_interfaces/modules/profile_pages/views/profile.dart';
import 'package:mmarket_interfaces/modules/reviewpage/views/review_page.dart';
import 'package:mmarket_interfaces/modules/welcomebackpage/views/welcome_back_page.dart';

import '../modules/login_signin_page/views/google_signup_additional_info.dart';

class Routes {
  static const ShowProductDescription = '/ShowProductDescription';
  static const DiningRoomHomePage = '/DiningRoomHomePage';
  static const SectionsLivingroom = '/SectionsLivingroom';
  static const SectionsDiningroom = '/SectionsDiningroom';
  static const livingroom_HomePage = '/livingroom_HomePage';
  static const EditProfile = '/EditProfile';
  static const Profile = '/Profile';
  static const MyOrders = '/MyOrders';
  static const ReviewPage = '/ReviewPage';
  static const WelcomeBackPage = '/WelcomeBackPage';
  static const Login = '/Login';
  static const Signup = '/Signup';
  static const GoogleFacbookSignupAdditionalInfo =
      '/GoogleSignupAdditionalInfo';
}


class AppPages {
  static final Pages = [
     GetPage(
      name: Routes.ShowProductDescription,
      page: () => ShowProductDescription(),
    ),
    GetPage(
      name: Routes.DiningRoomHomePage,
      page: () => DiningRoomHomePage(),
    ),
    GetPage(
      name: Routes.SectionsLivingroom,
      page: () => const SectionsLivingroom(),
    ),
    GetPage(
      name: Routes.livingroom_HomePage,
      page: () => const livingroom_HomePage(),
    ),
    GetPage(
      name: Routes.EditProfile,
      page: () => const EditProfile(),
    ),
    GetPage(
      name: Routes.Profile,
      page: () => const Profile(),
    ),
    GetPage(
      name: Routes.MyOrders,
      page: () => const MyOrders(),
    ),
    GetPage(
      name: Routes.ReviewPage,
      page: () => const ReviewPage(),
    ),
    GetPage(
      name: Routes.WelcomeBackPage,
      page: () => const WelcomeBackPage(),
    ),
    GetPage(
      name: Routes.SectionsDiningroom,
      page: () => const SectionsDiningroom(),
    ),
    GetPage(
      name: Routes.Login,
      page: () => Login(),
    ),
    GetPage(
      name: Routes.Signup,
      page: () => Signup(),
    ),
    GetPage(
      name: Routes.GoogleFacbookSignupAdditionalInfo,
      page: () => GoogleFacbookSignupAdditionalInfo(),
    ),
  ];
}
