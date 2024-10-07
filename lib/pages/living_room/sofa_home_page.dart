import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets_componants/product_list_item.dart';

class SofaHomePage extends StatelessWidget {
  const SofaHomePage({super.key});

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              Row(
                children: [
                  ProductLIstItem(
                    PicPath:'assets/images/sofatopleft.png',
                    Title: 'Luxe Lounge Sofa',
                    Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                    Price: 420,
                  ),
                  ProductLIstItem(
                    PicPath:'assets/images/sofatopright.png',
                    Title: 'Contemporary Sofa',
                    Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                    Price: 320,
                  ),
                ],
              ),
              Row(
                children: [
                  ProductLIstItem(
                    PicPath:'assets/images/sofadownleft.png',
                    Title: 'Chesterfield Sofa',
                    Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                    Price: 220,
                  ),
                  ProductLIstItem(
                    PicPath:'assets/images/sofadownright.png',
                    Title: 'Scandinavian Sofa',
                    Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                    Price: 410,
                  ),
                ],
              ),
              Row(
                children: [
                  ProductLIstItem(
                    PicPath:'assets/images/sofatopleft.png',
                    Title: 'Luxe Lounge Sofa',
                    Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                    Price: 420,
                  ),
                  ProductLIstItem(
                    PicPath:'assets/images/sofatopright.png',
                    Title: 'Contemporary Sofa',
                    Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                    Price: 320,
                  ),
                ],
              ),
              Row(
                children: [
                  ProductLIstItem(
                    PicPath:'assets/images/sofadownleft.png',
                    Title: 'Chesterfield Sofa',
                    Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                    Price: 220,
                  ),
                  ProductLIstItem(
                    PicPath:'assets/images/sofadownright.png',
                    Title: 'Scandinavian Sofa',
                    Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                    Price: 410,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
