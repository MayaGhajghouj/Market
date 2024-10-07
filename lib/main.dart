import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/dining_room/dining-table_home_page.dart';
import 'pages/dining_room/product_description_DiningTable.dart';
import 'pages/living_room/product_description_sofa.dart';
import 'pages/living_room/sofa_home_page.dart';
import 'pages/profile_pages/edit_profile.dart';
import 'pages/profile_pages/my_orders.dart';
import 'pages/profile_pages/profile.dart';
import 'pages/review_page.dart';
import 'pages/sections_livingroom.dart';
import 'pages/welcome_back_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute:  '/MyOrders',
      getPages: [
        GetPage(name: '/ProductDes_DiningTable', page: () => ProductDes_DiningTable()),
        GetPage(name: '/DiningTableHomePage', page: () => DiningTableHomePage()),
        GetPage(name: '/ProductDes_Sofa', page: () => ProductDes_Sofa()),
        GetPage(name: '/SofaHomePage', page: () => SofaHomePage()),
        GetPage(name: '/EditProfile', page: () => EditProfile()),
        GetPage(name: '/MyOrders', page: () => MyOrders()),
        GetPage(name: '/Profile', page: () => Profile()),
        GetPage(name: '/ReviewPage', page: () => ReviewPage()),
        GetPage(name: '/SectionsLivingroom', page: () => SectionsLivingroom()),
        GetPage(name: '/WelcomeBackPage', page: () => WelcomeBackPage()),
      ],
    );
  }
}
