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
          Text(orderState,
            style: const TextStyle(
              fontFamily: 'League Spartan',
              fontWeight: FontWeight.w300,
              fontSize: 13,
            ),
          ),
          Text(date,
            style: const TextStyle(
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
                AssetImage(imagePath,)
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0,),
          // 2 column
           Expanded(
            flex: 2,
            child: Column(//has 3 sections 1.Title 2.SubText  3.Row
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: salmon,
                  ),
                ),
                const SizedBox(height: 5.0,),
                Text(subText,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'League Spartan',
                      color: Colors.black
                  ),
                  maxLines: 2,
                  overflow:TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('$price \$',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'League Spartan',
                          color: Colors.black
                      ),
                      maxLines: 3,
                      overflow:TextOverflow.ellipsis,
                    ),
                    const Text('1x Uds. \$',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'League Spartan',
                          color: Colors.black
                      ),
                      maxLines: 3,
                      overflow:TextOverflow.ellipsis,
                    ),
                    const Text('Total: \$ 7.50',
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
              child: const Icon(
                Icons.delete,
                size: 15,
                color: salmon,
              ),
            ),
          ),
          const SizedBox(width: 10.0,),
          GestureDetector(
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: salmon,
                color: salmon,
              ),
              child: const Icon(
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