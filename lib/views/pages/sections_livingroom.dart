import 'package:flutter/material.dart';
import 'package:mmarket_interfaces/constants/colors.dart';

class SectionsLivingroom extends StatelessWidget {
  const SectionsLivingroom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Living Room',
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
                              child: Text('Decorative        Light',
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
                        Expanded(
                          flex: 5,
                          child:Container(
                            margin: const EdgeInsets.all(5.0),
                            decoration: const BoxDecoration(
                              color: salmon,
                              //color: brown_rosy,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child: const Center(
                              child: Text('Lights',
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
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: const BoxDecoration(
                              color: salmon,
                              //color: brown_rosy,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child: const Center(
                              child: Text('Chairs',
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
                      ],
                    ),
                  ),
                  // column 2
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: const BoxDecoration(
                              color: salmon,
                              //color: brown_rosy,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child: const Center(
                              child: Text('Sofa',
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
                        Expanded(
                          flex: 3,
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: const BoxDecoration(
                              color: salmon,
                              //color: brown_rosy,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child: const Center(
                              child: Text('Tables',
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
                        Expanded(
                          flex: 5,
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: const BoxDecoration(
                              color: salmon,
                              //color: brown_rosy,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child: const Center(
                              child: Text('Cupboard',
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child:
              Container(
                margin: const EdgeInsets.all(5.0),
                width:double.infinity,
                decoration: const BoxDecoration(
                  color: salmon,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Center(
                  child: Text('Decore',
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
          ],

        ),
      ),
    );
  }
}
