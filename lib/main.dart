import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/modules/dining_room/views/diningroom_home_page.dart';
import 'package:mmarket_interfaces/modules/dining_room/views/product_description_DiningTable.dart';
import 'package:mmarket_interfaces/modules/living_room/views/product_description_sofa.dart';
import 'package:mmarket_interfaces/modules/living_room/views/livingroom_home_page.dart';
import 'package:mmarket_interfaces/modules/profile_pages/views/edit_profile.dart';
import 'package:mmarket_interfaces/modules/profile_pages/views/my_orders.dart';
import 'package:mmarket_interfaces/modules/profile_pages/views/profile.dart';
import 'package:mmarket_interfaces/modules/reviewpage/views/review_page.dart';
import 'package:mmarket_interfaces/modules/living_room/views/sections_livingroom.dart';
import 'package:mmarket_interfaces/modules/welcomebackpage/views/welcome_back_page.dart';

void main() async{
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
    );
    print('succes in firebase =====================');
  }
  catch (e) {
    print("Failed to initialize Firebase: $e");
  }
  runApp(const MyApp());
}
/*
* WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
runApp(const MyApp());
* */

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
      initialRoute: Routes.WelcomeBackPage,
      getPages: AppPages.Pages,
    );
  }
}
