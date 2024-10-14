import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';

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
      initialRoute: Routes.Login,
      getPages: AppPages.Pages,
    );
  }
}
