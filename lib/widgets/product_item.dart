import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

Widget ProductItem ({
required String PicPath ,//picture
required String Title,// title
required String Description,// short description
required int Price,//price
// onpress for favourit
// onpress for add item to card
})
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Expanded(
      child: Container( // the frame contain the product
        padding: const EdgeInsets.all(8.0),
        width: 163,
        //  height: 219,
        decoration:  BoxDecoration(
          //color: brown_rosy,
          borderRadius: BorderRadius.all(
            Radius.circular(14.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //  mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              //margin: EdgeInsets.only(top: 24.5,left: 163,),
              width: 163,
              decoration:   const BoxDecoration(
                color: Beige,
                borderRadius: BorderRadius.all(Radius.circular(14.0),),
              ),
              child:  Image(
                image:AssetImage(
                  PicPath,),
              ),
            ),
            const SizedBox(height: 9,),
             Text(Title,
              style: const TextStyle(
                //  font-family: Poppins;
                // font-size: 15px;
                // font-weight: 500;
                // line-height: 22.5px;
                // text-align: left;
                // color: #4B4544;
                fontFamily:'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Black,
              ),
            ),
            const SizedBox(height: 9,),
             Text(Description,
              style: const TextStyle(
                fontFamily:'League Spartan',
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: Black,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 9,),
            const Divider(
              color: salmon,
              thickness: 1.5,
            ),
            Container(
              width: 163,
              child: Row(
                children: [
                   Expanded(
                    child: Text('$Price\$',
                      style: const TextStyle(
                        //styleName: Subtitle;
                        //   font-family: Poppins;
                        // font-size: 15px;
                        // font-weight: 500;
                        // line-height: 22.5px;
                        // text-align: right;
                        // color: #CC7861;
                        fontFamily:'Poppins',
                        fontSize: 15,
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
          ],
        ),
      ),
    ),
  );

}

