import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: salmon,
            fontWeight: FontWeight.w600,

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
                  Icons.edit,
                  size: 35,

                )),
          ),
        ],
        //backgroundColor: Beige,
      ),
      body: Column(
          children: [
            Center(
      child: Stack(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/pp.png'),
            radius: 80,
          ),
          Positioned(
            bottom: 30,
            left: 130,
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: salmon,
              ),
              child: IconButton(onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    size: 20,
                  ),
              ),
            ),
          ),
        ],
      ),
          ),
            SizedBox(height: 5.0,),
            Container(
              padding: EdgeInsets.all(5),
              color: Beige,
              child: Column(
                children: [
                  Text('Madison Smith',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ID : ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                      Text('25030024',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // full name :
                  const Text('Full Name',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),

                  ),
                  const SizedBox(height: 2.0,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Madison Smith',
                      hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      filled: true,
                      fillColor: Beige,
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(15),),
                       borderSide: BorderSide.none,
                     ),

                    ),
                  ),
                  // email :
                  const Text('Email',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 2.0,),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'madisons@example.com',
                      hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      ),
                      filled: true,
                      fillColor: Beige,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15),),
                        borderSide: BorderSide.none,
                      ),

                    ),
                  ),
                  // mobile number :
                  const Text('Mobile Number',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 2.0,),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: '+123 4567 890',
                      hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      filled: true,
                      fillColor: Beige,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15),),
                        borderSide: BorderSide.none,
                      ),

                    ),
                  ),
                  // date :
                  const Text('Date of birth',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 2.0,),
                  TextFormField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: '01 / 04 / 199X',
                      hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      filled: true,
                      fillColor: Beige,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15),),
                        borderSide: BorderSide.none,
                      ),

                    ),
                  ),
                  //  gender :
                  const Text('Gender',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Beige,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.radio_button_unchecked_rounded,
                                  color: salmon,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text('Male',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Beige,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.radio_button_on,
                                  color: salmon,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text('Female',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                 // update information :
                  Center(
                    child: MaterialButton(
                      color: salmon,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0,),
                      ),
                      child: const Text('Update Profile',
                        style:  TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          color: Terracotta,
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],

          ),
    );
  }
}
