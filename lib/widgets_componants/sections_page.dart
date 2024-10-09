
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';

import '../constants/colors.dart';

Widget SectionsPage({
  required String appbarTitle,
  required String section1,
   String? routing_section1,
  required String section2,
  String? routing_section2,
  required String section3,
  String? routing_section3,
  required String section4,
  String? routing_section4,
  required String section5,
  String? routing_section5,
  required String section6,
  String? routing_section6,
  String? section7,
  String? routing_section7,
}){
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title:  Text(
        appbarTitle,
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
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Row(
              children: [
                // column 1
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(routing_section1!);
                          },
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: salmon,
                              //color: brown_rosy,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child: Center(
                              child: Text(section1,
                                style: TextStyle(
                                  fontFamily: 'League Spartan',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 26,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child:GestureDetector(
                          onTap: () {
                            Get.toNamed(routing_section2!);
                          },
                          child: Container(
                            margin: const EdgeInsets.all(5.0),
                            decoration: const BoxDecoration(
                              color: salmon,
                              //color: brown_rosy,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child:  Center(
                              child: Text(section2,
                                style: TextStyle(
                                  fontFamily: 'League Spartan',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 26,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(routing_section3!);
                          },
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: const BoxDecoration(
                              color: salmon,
                              //color: brown_rosy,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child:  Center(
                              child: Text(section3,
                                style: TextStyle(
                                  fontFamily: 'League Spartan',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 26,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // column 2
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(routing_section4!);
                          },
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: const BoxDecoration(
                              color: salmon,
                              //color: brown_rosy,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child:  Center(
                              child: Text(section4,
                                style: TextStyle(
                                  fontFamily: 'League Spartan',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 26,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child:GestureDetector(
                          onTap: () {
                            Get.toNamed(routing_section5!);
                          },
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: const BoxDecoration(
                              color: salmon,
                              //color: brown_rosy,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child:  Center(
                              child: Text(section5,
                                style: TextStyle(
                                  fontFamily: 'League Spartan',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 26,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(routing_section6!);
                          },
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: const BoxDecoration(
                              color: salmon,
                              //color: brown_rosy,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child:  Center(
                              child: Text(section6,
                                style: TextStyle(
                                  fontFamily: 'League Spartan',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 26,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (section7 != null)
          Expanded(
            child:
            GestureDetector(
              onTap: () {
                Get.toNamed(routing_section7!);
              },
              child: Container(
                margin: const EdgeInsets.all(5.0),
                width:double.infinity,
                decoration: const BoxDecoration(
                  color: salmon,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Center(
                  child: Text(section7,
                    style: TextStyle(
                      fontFamily: 'League Spartan',
                      fontWeight: FontWeight.w300,
                      fontSize: 26,
                      color: Colors.white,
                    ),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ) ,
        ],

      ),
    ),
  );
}