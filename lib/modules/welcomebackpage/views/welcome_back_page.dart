import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/constants/colors.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/modules/dining_room/views/sections_diningroom.dart';


class WelcomeBackPage extends StatelessWidget {
  const WelcomeBackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Padding(
        padding:const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text('Hi, Welcome Back',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: salmon,
                        fontFamily: 'Poppins'
                      ),
                      ),
                      Text('Create spaces that bring joy',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Black,
                            fontFamily: 'League Spartan'
                        ),
                      ),
                    ],
                  ),
                 // SizedBox(width: 1,),
                  IconButton(
                      onPressed:() {
          
                      } ,
                      icon: Container(
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
              ),
              const SizedBox(height: 3.0,),
              Container( // container for picture
                width: 349,
                height: 132,
                decoration:  const BoxDecoration(
                  color: salmon,
                  borderRadius: BorderRadius.all(Radius.circular(14.0),),
                ),
                child:  const Image(
                  image:AssetImage(
                    'assets/images/welcomepage.png',),
                ),
              ),
              const SizedBox(height: 3.0,),
              Container(
                width: double.infinity,
                height: 4,
                decoration:  const BoxDecoration(
                  color: salmon,
                  borderRadius: BorderRadius.all(Radius.circular(14.0),),
                ),
                child:  const Image(
                  image:AssetImage(
                    'assets/images/list.png',),
                ),
          
              ),
              const SizedBox(height: 3.0,),
              const Text('Categories',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: salmon,
                    fontFamily: 'Poppins'
                ),
              ),
              const SizedBox(height: 3.0,),
              Row( // here we willl start the routing for categories
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Living  room
                  Container( // container for picture
                    width: 65.97,
                    height: 65.97,
                    decoration:  const BoxDecoration(
                      color: salmon,
                      borderRadius: BorderRadius.all(Radius.circular(14.0),),
                    ),
                    child:  GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.SectionsLivingroom);
                      },
                      child: const Image(
                        image:AssetImage(
                          'assets/images/Living room.png',),
                      ),
                    ),
          
                  ),
                  // Kitchen room
                  Container( // container for picture
                    width: 65.97,
                    height: 65.97,
                    decoration:  const BoxDecoration(
                      color: salmon,
                      borderRadius: BorderRadius.all(Radius.circular(14.0),),
                    ),
                    child:  const Image(
                      image:AssetImage(
                        'assets/images/Kitchen.png',),
                    ),
          
                  ),
                  // Dining room
                  Container( // container for picture
                    width: 65.97,
                    height: 65.97,
                    decoration:  const BoxDecoration(
                      color: salmon,
                      borderRadius: BorderRadius.all(Radius.circular(14.0),),
                    ),
                    child:  GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.SectionsDiningroom);
                      },
                      child: const Image(
                        image:AssetImage(
                          'assets/images/Dining Room.png',),
                      ),
                    ),
          
                  ),
                  // Bed room
                  Container( // container for picture
                    width: 65.97,
                    height: 65.97,
                    decoration:  const BoxDecoration(
                      color: salmon,
                      borderRadius: BorderRadius.all(Radius.circular(14.0),),
                    ),
                    child:  const Image(
                      image:AssetImage(
                        'assets/images/Bedroom.png',),
                    ),
          
                  ),
                ],
              ),
              const SizedBox(height: 3.0,),
              const Text('best Seller',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: salmon,
                    fontFamily: 'Poppins'
                ),
              ),
              const SizedBox(height: 3.0,),
              Container( // container for picture
                width: 349,
                height: 132,
                decoration:  const BoxDecoration(
                  color: salmon,
                  borderRadius: BorderRadius.all(Radius.circular(12.0),),
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('Kitchen Cart',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Black,
                                  fontFamily: 'Poppins'
                              ),
                            ),
                            const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  color: Black,
                                  fontFamily: 'League Spartan',
                              ),
                              textAlign: TextAlign.center,
          
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    height: 19.44,
                                    width: 50.65,
                                    decoration:  const BoxDecoration(
                                      color:Mywieght,
                                      borderRadius: BorderRadius.all(Radius.circular(52.73),),
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(Icons.star,
                                        size:20 ,
                                          color: salmon,
                                        ),
                                        Text('4.5',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              //   color: salmon,
                                              fontFamily: 'League Spartan'
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    height: 19.44,
                                    width: 50.65,
                                    decoration:  const BoxDecoration(
                                      color:Mywieght,
                                      borderRadius: BorderRadius.all(Radius.circular(52.73),),
                                    ),
                                    child: const Center(
                                      child: Text('Shop Now',
                                        style: TextStyle(
                                            fontSize: 8.96,
                                            fontWeight: FontWeight.w400,
                                            //   color: salmon,
                                            fontFamily: 'League Spartan'
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 171,
                        width: 171,
                        child: const Image(
                          image:AssetImage(
                            'assets/images/alejandrao_httpss.mj 1.png',),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 3.0,),
              const Text('New Collection',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: salmon,
                    fontFamily: 'Poppins'
                ),
              ),
              const SizedBox(height: 3.0,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                      const Image(
                          image:AssetImage('assets/images/Rectangle 22.png')
                      ),
                      const Text('Aluminum chair',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins'
                          ),
                        ),
                      const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'League Spartan'
                          ),
                        ),
                      Row(
                        children: [
                          const Expanded(
                            child: Text('120\$',
                              style:  TextStyle(
                                fontFamily:'Poppins',
                                fontSize:15,
                                fontWeight: FontWeight.w500,
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
                                        size: 10,
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
                                        size: 10,
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
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Image(
                            image:AssetImage('assets/images/Rectangle 22 (1).png')
                        ),
                        const Text('Stylish chair',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins'
                          ),
                        ),
                        const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'League Spartan'
                          ),
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Text('120\$',
                                style:  TextStyle(
                                  fontFamily:'Poppins',
                                  fontSize:15,
                                  fontWeight: FontWeight.w500,
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
                                          size: 10,
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
                                          size: 10,
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
                      ],
                    ),
                  ),
                ],
              ),


              const Text('New Collection',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: salmon,
                    fontFamily: 'Poppins'
                ),
              ),
              const SizedBox(height: 3.0,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Image(
                            image:AssetImage('assets/images/Rectangle 22.png')
                        ),
                        const Text('Aluminum chair',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins'
                          ),
                        ),
                        const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'League Spartan'
                          ),
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Text('120\$',
                                style:  TextStyle(
                                  fontFamily:'Poppins',
                                  fontSize:15,
                                  fontWeight: FontWeight.w500,
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
                                          size: 10,
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
                                          size: 10,
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
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Image(
                            image:AssetImage('assets/images/Rectangle 22 (1).png')
                        ),
                        const Text('Stylish chair',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins'
                          ),
                        ),
                        const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'League Spartan'
                          ),
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Text('120\$',
                                style:  TextStyle(
                                  fontFamily:'Poppins',
                                  fontSize:15,
                                  fontWeight: FontWeight.w500,
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
                                          size: 10,
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
                                          size: 10,
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
                      ],
                    ),
                  ),
                ],
              ),
          
          
            ],
          ),
        ),
      ),
    ),
    );
  }
}
