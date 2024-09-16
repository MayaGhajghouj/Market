import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProductDescription  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Dining Table',
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
                    Radius.circular(20.0),),
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
        padding: const EdgeInsets.all(15.0),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // font-family: League Spartan;
              //     font-size: 16.24px;
              //     font-weight: 400;
              // line-height: 14.94px;
              //     text-align: center;
              children: [
                TextButton(
                  onPressed: (){

                  },
                  child: const Text('Living room',
                    style: TextStyle(
                      color: salmon,
                      fontFamily: 'League Spartan',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 9,),
                TextButton(
                  onPressed: (){

                  },
                  child:  const Text(' Decorative Light',
                    style: TextStyle(
                      color: salmon,
                      fontFamily: 'League Spartan',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 9,),
                TextButton(
                  onPressed: (){

                  },
                  child:  const Text('Bed',
                    style: TextStyle(
                      color: salmon,
                      fontFamily: 'League Spartan',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 264,
                    width:315 ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14.0)),
                      color: Beige,
                    ),
                    child: Image(image: AssetImage('assets/images/openproduct.png'),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Glass Table',
                        style:  TextStyle(
                          fontFamily:'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Black,
                        ),
                      ),
                      const Text('Lorem ipsum dolor sit amet consectetur.'
                          ' Odio neque commodo id aenean quis magna. '
                          'Auctor neque id pharetra gravida. Libero'
                          ' scelerisque ut mauris volutpat risus nec '
                          'facilisi adipiscing. Augue mollis amet.',
                        style: const TextStyle(
                          fontFamily:'League Spartan',
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Black,
                        ),
                        maxLines: 2,
                      ),
                      const Divider(
                        color: salmon,
                        thickness: 2,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('300\$',
                                style:  TextStyle(
                                  fontFamily:'Poppins',
                                  fontSize:20,
                                  fontWeight: FontWeight.w600,
                                  color: Terracotta,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(onPressed: (){},
                                    icon: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Terracotta,
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(
                                          Icons.favorite,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  IconButton(onPressed: (){},
                                    icon: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Terracotta,
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(
                                          Icons.add,
                                          size: 15,
                                          color: Colors.white,
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
                      MaterialButton(onPressed: (){},
                        color: salmon,
                          child: Center(
                            child: Text('Add to Cart',
                            style: TextStyle(
                              color: Terracotta,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              fontFamily: 'Poppins'
                            ),
                            ),
                          ),
                      ),
                    ],
                  ),

                ],
              ),
            )],
        ),
      ),
    );
  }
}
