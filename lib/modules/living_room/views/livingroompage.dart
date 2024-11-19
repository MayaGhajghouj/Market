import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/app_snackbar.dart';
import 'package:mmarket_interfaces/core/constants/colors.dart';
import 'package:mmarket_interfaces/core/manage_app_state/app_state_controller.dart';
import 'package:mmarket_interfaces/widgets_componants/product_list_item.dart';

class Livingroompage extends StatelessWidget {
  Livingroompage({super.key});

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final AppStateController _appStateController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Sofa',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: salmon,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: const BoxDecoration(
                  color: salmon,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: const Icon(
                  Icons.search,
                  size: 35,
                )),
          ),
        ],
        backgroundColor: Beige,
      ),
      body: StreamBuilder(
        stream: _firestore
            .collection('products')
            .where('category', isEqualTo: 'livingRoom')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                backgroundColor: salmon,
                color: Terracotta,
              ),
            );
          }
          if (snapshot.hasError) {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text(
                      'Error !!!!',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Terracotta,
                      ),
                    ),
                    content: Text('${snapshot.error}'),
                  );
                });
          }
          if (snapshot.data!.docs.isEmpty) {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const AlertDialog(
                    title: Text(
                      'No Data Founded !!!!',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Terracotta,
                      ),
                    ),
                  );
                });
          }
          Map products = snapshot.data!.docs as Map;
          return Expanded(
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 0.0,
                crossAxisSpacing: 0.0,
                childAspectRatio: 5 / 8,
              ),
              itemBuilder: (BuildContext context, int index) {
                if (products.isNotEmpty) {
                  print('Success in fetch data');

                  return productLIstItem(context,
                      productModel: products[index]);
                } else {
                  AppSnackBar(context: context, msg: 'No products available');
                  print('faild in fetch data');
                  return null;
                }
              },
            ),
          );
        },
      ),
    );
  }
}
