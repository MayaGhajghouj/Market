import 'package:flutter/material.dart';

import '../constants/colors.dart';

class WelcomeBackPage extends StatelessWidget {
  const WelcomeBackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Padding(
        padding:const EdgeInsets.all(15.0),
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
            SizedBox(height: 3.0,),
            Container( // container for picture
              width: 349,
              height: 132,
              decoration:  BoxDecoration(
                color: salmon,
                borderRadius: BorderRadius.all(Radius.circular(14.0),),
              ),
              child:  Image(
                image:AssetImage(
                  'assets/images/welcomepage.png',),
              ),
            ),
            SizedBox(height: 3.0,),
            Container(
              width: double.infinity,
              height: 4,
              decoration:  BoxDecoration(
                color: salmon,
                borderRadius: BorderRadius.all(Radius.circular(14.0),),
              ),
              child:  Image(
                image:AssetImage(
                  'assets/images/list.png',),
              ),

            ),
            SizedBox(height: 3.0,),
            Text('Categories',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: salmon,
                  fontFamily: 'Poppins'
              ),
            ),
            SizedBox(height: 3.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container( // container for picture
                  width: 65.97,
                  height: 65.97,
                  decoration:  BoxDecoration(
                    color: salmon,
                    borderRadius: BorderRadius.all(Radius.circular(14.0),),
                  ),
                  child:  Image(
                    image:AssetImage(
                      'assets/images/Living room.png',),
                  ),

                ),
                Container( // container for picture
                  width: 65.97,
                  height: 65.97,
                  decoration:  BoxDecoration(
                    color: salmon,
                    borderRadius: BorderRadius.all(Radius.circular(14.0),),
                  ),
                  child:  Image(
                    image:AssetImage(
                      'assets/images/Kitchen.png',),
                  ),

                ),
                Container( // container for picture
                  width: 65.97,
                  height: 65.97,
                  decoration:  BoxDecoration(
                    color: salmon,
                    borderRadius: BorderRadius.all(Radius.circular(14.0),),
                  ),
                  child:  Image(
                    image:AssetImage(
                      'assets/images/Dining Room.png',),
                  ),

                ),
                Container( // container for picture
                  width: 65.97,
                  height: 65.97,
                  decoration:  BoxDecoration(
                    color: salmon,
                    borderRadius: BorderRadius.all(Radius.circular(14.0),),
                  ),
                  child:  Image(
                    image:AssetImage(
                      'assets/images/Bedroom.png',),
                  ),

                ),
              ],
            ),
            SizedBox(height: 3.0,),
            Text('best Seller',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: salmon,
                  fontFamily: 'Poppins'
              ),
            ),
            SizedBox(height: 3.0,),
            Container( // container for picture
              width: 349,
              height: 132,
              decoration:  BoxDecoration(
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
                          Text('Kitchen Cart',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Black,
                                fontFamily: 'Poppins'
                            ),
                          ),
                          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit',
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
                                  decoration:  BoxDecoration(
                                    color:Mywieght,
                                    borderRadius: BorderRadius.all(Radius.circular(52.73),),
                                  ),
                                  child: Row(
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
                                  decoration:  BoxDecoration(
                                    color:Mywieght,
                                    borderRadius: BorderRadius.all(Radius.circular(52.73),),
                                  ),
                                  child: Center(
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
                      child: Image(
                        image:AssetImage(
                          'assets/images/alejandrao_httpss.mj 1.png',),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.0,),
            Text('New Collection',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: salmon,
                  fontFamily: 'Poppins'
              ),
            ),
            SizedBox(height: 3.0,),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                    Image(
                        image:AssetImage('assets/images/Rectangle 22.png')
                    ),
                    Text('Aluminum chair',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'
                        ),
                      ),
                    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'League Spartan'
                        ),
                      ),
                    Container(
                        child: Row(
                          children: [
                            Expanded(
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


                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image(
                          image:AssetImage('assets/images/Rectangle 22 (1).png')
                      ),
                      Text('Stylish chair',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'
                        ),
                      ),
                      Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'League Spartan'
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
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
    );
  }
}
