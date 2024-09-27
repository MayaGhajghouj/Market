import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

Widget orderItem ({
  required String imagePath,
  required String title,
  required String subText,
  required String orderState,
  required String date,
  required double price,

}){
  return Column(
    children: [
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$orderState',
            style: TextStyle(
              fontFamily: 'League Spartan',
              fontWeight: FontWeight.w300,
              fontSize: 13,
            ),
          ),
          Text('$date',
            style: TextStyle(
              fontFamily: 'League Spartan',
              fontWeight: FontWeight.w300,
              fontSize: 13,
            ),
          ),
        ],
      ),
      const Divider(
        color: salmon,
        thickness: 1,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1picture
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                color: Beige,
              ),
              child: Container(
                width: 89,
                height: 89,
                child:  Image(image:
                AssetImage('$imagePath',)
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0,),
          // 2 column
           Expanded(
            flex: 2,
            child: Column(//has 3 sections 1.Title 2.SubText  3.Row
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$title',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: salmon,
                  ),
                ),
                SizedBox(height: 5.0,),
                Text('$subText',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'League Spartan',
                      color: Colors.black
                  ),
                  maxLines: 2,
                  overflow:TextOverflow.ellipsis,
                ),
                SizedBox(height: 5.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('$price \$',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'League Spartan',
                          color: Colors.black
                      ),
                      maxLines: 3,
                      overflow:TextOverflow.ellipsis,
                    ),
                    Text('1x Uds. \$',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'League Spartan',
                          color: Colors.black
                      ),
                      maxLines: 3,
                      overflow:TextOverflow.ellipsis,
                    ),
                    Text('Total: \$ 7.50',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'League Spartan',
                          color: Colors.black
                      ),
                      maxLines: 3,
                      overflow:TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // color: salmon,
                border: Border.all(
                  color: salmon,
                ),
              ),
              child: Icon(
                Icons.delete,
                size: 15,
                color: salmon,
              ),
            ),
          ),
          const SizedBox(width: 10.0,),
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // color: salmon,
                color: salmon,
              ),
              child: Icon(
                Icons.add,
                size: 15,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}