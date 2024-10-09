import 'package:flutter/material.dart';
import 'package:mmarket_interfaces/constants/colors.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/widgets_componants/product_list_item.dart';


class DiningRoomHomePage extends StatelessWidget {
   DiningRoomHomePage({super.key});

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
        child: SingleChildScrollView(
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
              Row(
             children: [
               ProductLIstItem(
                 ProductDetailsPage: Routes.ProductDes_DiningTable,
               PicPath:'assets/images/Topleft.png',
               Title: 'Deluxe table',
               Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
               Price: 420,
             ),
               ProductLIstItem(
               PicPath:'assets/images/Topright.png',
               Title: 'Modern table',
               Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
               Price: 320,
             ),
           ],
            ),
              Row(
              children: [
                ProductLIstItem(
                  PicPath:'assets/images/Downleft.png',
                  Title: 'Modern Glass table',
                  Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                  Price: 220,
                ),
                ProductLIstItem(
                  PicPath:'assets/images/Downright.png',
                  Title: 'Bohemian table',
                  Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                  Price: 410,
                ),
              ],
            ),
            Row(
              children: [
                ProductLIstItem(
                  PicPath:'assets/images/Topleft.png',
                  Title: 'Deluxe table',
                  Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                  Price: 420,
                ),
                ProductLIstItem(
                  PicPath:'assets/images/Topright.png',
                  Title: 'Modern table',
                  Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                  Price: 320,
                ),
              ],
            ),
            Row(
              children: [
                ProductLIstItem(
                  PicPath:'assets/images/Downleft.png',
                  Title: 'Modern Glass table',
                  Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                  Price: 220,
                ),
                ProductLIstItem(
                  PicPath:'assets/images/Downright.png',
                  Title: 'Bohemian table',
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
