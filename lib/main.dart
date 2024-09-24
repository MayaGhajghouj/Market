import 'package:flutter/material.dart';
import 'package:mmarket_interfaces/pages/dining_room/product_description_DiningTable.dart';
import 'package:mmarket_interfaces/pages/welcome_back_page.dart';
import 'pages/dining_room/dining-table_home_page.dart';
import 'pages/living_room/product_description_sofa.dart';
import 'pages/living_room/sofa_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // routes: {
      //   '/ProductDescription': (context)=>ProductDescription(),
      // },
      home:  WelcomeBackPage(
      ),
    );
  }
}
