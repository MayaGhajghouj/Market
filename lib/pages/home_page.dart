import 'package:flutter/material.dart';
import 'package:mmarket_interfaces/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Market',
          style: TextStyle(
            fontFamily: '',
          ),
        ),
        backgroundColor: Beige,
      ),
    );
  }
}
