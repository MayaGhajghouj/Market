import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets_componants/order_item.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Orders',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: salmon,
            fontWeight: FontWeight.w600,

          ),
        ),
        //backgroundColor: Beige,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
          children: [
            orderItem(
                imagePath: 'assets/images/order1.png',
                title: 'Serenity Nightstand',
                subText: 'In a laoreet purus. Integer turpis quam, laoreet id orci nec, ultrices...',
                orderState: 'Order: Delivered',
                date: 'May 15',
                price: 7.5
            ),
          
            orderItem(
                imagePath: 'assets/images/order2.png',
                title: 'Blue Table Lamp',
                subText: 'In a laoreet purus. Integer turpis quam, laoreet id orci nec, ultrices...',
                orderState: 'Order: Canceled',
                date: 'May 22',
                price: 25
            ),
          
            orderItem(
                imagePath: 'assets/images/order3.png',
                title: 'Bedroom Dresser',
                subText: 'In a laoreet purus. Integer turpis quam, laoreet id orci nec, ultrices...',
                orderState: 'Order: Delivered',
                date: 'June 04',
                price: 285
            ),
          
            orderItem(
                imagePath: 'assets/images/order4.png',
                title: 'green Bed',
                subText: 'In a laoreet purus. Integer turpis quam, laoreet id orci nec, ultrices...',
                orderState: 'Order: Delivered',
                date: 'June 12',
                price: 285
            ),
          
            orderItem(
                imagePath: 'assets/images/order4.png',
                title: 'Serenity Nightstand',
                subText: 'In a laoreet purus. Integer turpis quam, laoreet id orci nec, ultrices...',
                orderState: 'Order: Delivered',
                date: 'May 15',
                price: 7.5
            ),
          
            orderItem(
                imagePath: 'assets/images/order1.png',
                title: 'Serenity Nightstand',
                subText: 'In a laoreet purus. Integer turpis quam, laoreet id orci nec, ultrices...',
                orderState: 'Order: Delivered',
                date: 'May 15',
                price: 7.5
            ),
          ],
          ),
        ),
      ),

    );
  }
}
